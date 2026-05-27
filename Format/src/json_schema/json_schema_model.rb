require 'model'
require 'json'
require 'set'
require 'json_schema/json_schema_type'

class JsonSchemaModel < Model
  @@output_dir = nil
  @@generator  = nil
  @@draft_spec = nil
  @@root_xmi   = nil

  def self.output_dir=(dir);    @@output_dir = dir;    end
  def self.output_dir;          @@output_dir;          end
  def self.generator_class=(g); @@generator = g;       end
  def self.draft_spec=(s);      @@draft_spec = s;      end
  def self.draft_spec;          @@draft_spec;          end
  def self.type_class;          JsonSchemaType;        end
  def self.diagram_class;       Diagram;               end
  def self.root_xmi=(xmi);      @@root_xmi = xmi;      end

  # DataSet/Table representation is indicated by a uml:TemplateBinding that
  # references these template-signature XMI IDs (stable across model versions).
  DATASET_TEMPLATE_SIG = '_19_0_3_68e0225_1634040001139_645314_47'.freeze
  TABLE_TEMPLATE_SIG   = '_19_0_3_68e0225_1634039408198_849137_33'.freeze

  # Explicit DataSet/Table classification for Event types whose SysML model
  # does not carry a templateBinding (e.g. deprecated or informally-specified
  # types that agents nonetheless emit in DataSet wire format).
  EXPLICIT_DATASET_TYPES = %w[AssetCount].freeze

  # All keyword-level decisions read from the active draft spec.
  def self.defs_key;        @@draft_spec[:defs_key];        end
  def self.id_key;          @@draft_spec[:id_key];          end
  def self.schema_uri;      @@draft_spec[:schema_uri];      end
  def self.use_unevaluated?;@@draft_spec[:use_unevaluated]; end
  def self.ref_prefix;      "#/#{defs_key}/";               end

  # Remove properties from all schemas in defs whose only content is a $ref
  # to a type that is not present in defs.  Relationships that exist in the
  # SysML model but belong to a different document (e.g. ComponentStream in
  # the Devices document) are silently dropped so the schema stays self-contained.
  def self.prune_missing_refs(defs)
    prefix = ref_prefix                          # e.g. "#/$defs/"
    defs.each_value { |schema| prune_schema(schema, defs, prefix) }
  end

  def self.prune_schema(schema, defs, prefix)
    return unless schema.is_a?(Hash)

    if (props = schema['properties'])
      to_remove = props.select do |_key, v|
        next false unless v.is_a?(Hash)
        # { '$ref': '...' } — simple scalar ref to missing type
        if v.size == 1 && (ref = v['$ref']) && ref.start_with?(prefix)
          !defs.key?(ref[prefix.length..])
        # { 'type': 'array', 'items': { '$ref': '...' } } — array of missing type
        elsif v['type'] == 'array' && (items = v['items'])&.is_a?(Hash) &&
              items.size == 1 && (ref = items['$ref']) && ref.start_with?(prefix)
          !defs.key?(ref[prefix.length..])
        else
          false
        end
      end.keys
      to_remove.each do |key|
        props.delete(key)
        schema['required']&.delete(key)
        $logger.debug "  Pruned missing-ref property: #{key}"
      end
      schema.delete('required') if schema['required']&.empty?

      # Recurse into nested object schemas (e.g. Assets/Components wrapper objects).
      props.each_value { |v| prune_schema(v, defs, prefix) if v.is_a?(Hash) }

      # Remove wrapper properties that became empty closed objects after pruning.
      empty_wrappers = props.select do |_key, v|
        v.is_a?(Hash) && v['type'] == 'object' &&
          v['properties']&.empty? && v['additionalProperties'] == false
      end.keys
      empty_wrappers.each do |key|
        props.delete(key)
        schema['required']&.delete(key)
        $logger.debug "  Pruned empty wrapper: #{key}"
      end
      schema.delete('required') if schema['required']&.empty?
    end

    %w[allOf anyOf oneOf].each do |combiner|
      schema[combiner]&.each { |s| prune_schema(s, defs, prefix) }
    end
  end

  def self.add_package(defs, seen, model, skip, level = 1)
    if skip.include?(model.name)
      $logger.debug "#{'  ' * level}xx Skipping package #{model.name}"
      return
    end
    $logger.debug "#{'  ' * level}-- Adding package #{model.name} to document"
    model.types.each do |t|
      if seen.include?(t.name) or t.name.include?('.')
        $logger.debug "#{'  ' * (level + 1)}xx - Skipping type #{t.name} - already seen or invalid name"
        next
      end
      if t.type != 'uml:Association'
        $logger.debug "#{'  ' * (level + 1)}++ - Adding type #{t.name}"
        defs[t.name] = t.to_json_schema
        seen << t.name
      else
        $logger.debug "#{'  ' * (level + 1)}xx - Skipping association #{t.name}"
      end
    end
    model.children.each do |c|
      add_package(defs, seen, c, skip, level + 1)
    end
  end

  # For every Sample subtype already collected in defs, synthesise an
  # XxxTimeSeries variant: same schema but with value overridden to a
  # float array and sampleCount added as an integer property.
  def self.add_timeseries_variants(defs)
    ts_entries = {}
    defs.each do |name, schema|
      t = Type.type_for_name(name)
      next unless name == 'Sample' or (t && t.respond_to?(:is_a_type?) && t.is_a_type?('Sample'))
      units = t.relation('units') && t.relation('units').default
      next if units && units =~ /3D$/

      ts_name = "#{name}TimeSeries"
      next if defs.key?(ts_name) || ts_entries.key?(ts_name)
      ts = JSON.parse(JSON.generate(schema))
      props = ts['properties'] ||= {}
      props['value']       = { 'type' => 'array', 'items' => { 'type' => 'number' } }
      props['sampleCount'] = { 'type' => 'integer' }
      ts['title'] = ts_name
      ts_entries[ts_name] = ts
      $logger.debug "  TimeSeries variant: #{ts_name}"
    end
    unless ts_entries.empty?
      defs.merge!(ts_entries)
      $logger.info "  Added #{ts_entries.size} TimeSeries variants"
    end
  end

  # Scans the full XMI (including skipped packages such as Simulation) for
  # uml:TemplateBinding elements whose signature matches the known DataSet or
  # Table template.  Each parameterSubstitution.actual attribute names the
  # concrete event-type class.  Returns a Hash of { type_name => :dataset | :table }.
  #
  # This catches types like Variable whose DataSet binding lives only inside
  # the Simulation sub-package and is never registered through the normal
  # model-loading path.
  def self.xmi_template_bindings
    return {} unless @@root_xmi
    bindings = {}
    @@root_xmi.xpath('.//templateBinding').each do |tb|
      sig = tb['signature']
      next unless sig == DATASET_TEMPLATE_SIG || sig == TABLE_TEMPLATE_SIG
      kind = sig == DATASET_TEMPLATE_SIG ? :dataset : :table
      tb.xpath('./parameterSubstitution').each do |ps|
        t = Type.type_for_id(ps['actual'])
        next unless t
        bindings[t.name] = kind
        $logger.debug "  XMI template binding: #{t.name} → #{kind}"
      end
    end
    bindings
  end

  # When multiple Type instances share a name (e.g. the structural AlarmLimits
  # data-type class and the AlarmLimits Event observation subtype), pick the
  # Event-subtype instance so the result-type and description checks work correctly.
  def self.event_subtype_instance(name)
    return Type.type_for_name(name) if name == 'Event'
    all = Type.all_for_name(name)
    return all.first if all.size <= 1
    all.find { |t| t.respond_to?(:is_a_type?) && (t.is_a_type?('Event') rescue false) } ||
      Type.type_for_name(name)
  end

  def self.add_datasets_and_tables(defs)
    # The SysML model has no Dataset or Table types; these must be injected.
    # Detection:
    #   1. "tabular" in class description → Table variant
    #   2. result type whose first parent is DataSet → DataSet variant
    #   3. XMI templateBinding to the DataSet/Table template → DataSet/Table variant
    #      (catches Variable, whose binding lives inside the skipped Simulation package)
    xmi_bindings = xmi_template_bindings

    ds_entries = {}
    defs.each do |name, schema|
      t = event_subtype_instance(name)
      next unless t
      next unless name == 'Event' || (t.respond_to?(:is_a_type?) && t.is_a_type?('Event'))

      defn  = t.documentation&.definition || ''
      table = defn.include?('tabular')
      dataSet = false

      unless table
        result = t.relation('result')
        if result && result.target && result.target.type && result.target.type.type == 'uml:Class'
          target = result.target.type
          dataSet = (target.parents.first&.name == 'DataSet') rescue false
        end

        unless dataSet
          case xmi_bindings[name]
          when :dataset then dataSet = true
          when :table   then table   = true
          end
        end

        dataSet = true if !table && EXPLICIT_DATASET_TYPES.include?(name)
      end

      next unless table || dataSet

      ds_name = table ? "#{name}Table" : "#{name}DataSet"
      next if defs.key?(ds_name) || ds_entries.key?(ds_name)
      ds = JSON.parse(JSON.generate(schema))
      props = ds['properties'] ||= {}
      props['value'] = { 'oneOf' => [{ 'type' => 'object' },
                                     { 'type' => 'string', 'enum' => ['UNAVAILABLE'] }] }
      props['count'] = { 'type' => 'integer' }
      ds['title'] = ds_name
      ds_entries[ds_name] = ds
      $logger.debug "  DataSet/Table variant: #{ds_name}"
    end
    unless ds_entries.empty?
      defs.merge!(ds_entries)
      $logger.info "  Added #{ds_entries.size} DataSet/Table variants"
    end
  end

  # After Events wrappers are built as closed schemas (additionalProperties: false),
  # inject synthesized DataSet/Table variant names as additional allowed properties.
  def self.patch_events_wrappers(defs)
    event_extras = defs.keys.select do |name|
      next false unless name.end_with?('DataSet') || name.end_with?('Table')
      base = name.sub(/(?:DataSet|Table)$/, '')
      t = event_subtype_instance(base)
      t && t.respond_to?(:is_a_type?) && (t.is_a_type?('Event') rescue false)
    end
    return if event_extras.empty?
    $logger.debug "  Patching Events wrappers with #{event_extras.size} extra variants"
    defs.each_value { |s| add_extras_to_events_wrapper(s, event_extras) }
  end

  def self.add_extras_to_events_wrapper(schema, extras)
    return unless schema.is_a?(Hash)
    events = schema.dig('properties', 'Events')
    if events.is_a?(Hash) && events['additionalProperties'] == false && (props = events['properties'])
      extras.each do |name|
        props[name] ||= { 'type' => 'array', 'items' => { '$ref' => "#{ref_prefix}#{name}" } }
      end
      $logger.debug "  Patched Events wrapper with #{extras.size} DataSet/Table variants"
    end
    (schema['properties'] || {}).each_value { |v| add_extras_to_events_wrapper(v, extras) }
    %w[allOf anyOf oneOf].each do |combiner|
      (schema[combiner] || []).each { |s| add_extras_to_events_wrapper(s, extras) }
    end
  end

  # Emit one .schema.json per top-level document under the active draft.
  def self.generate_documents(docs)
    docs.each do |spec|
      root = Type.type_for_name(spec[:root])
      unless root
        $logger.warn "Root class #{spec[:root]} not found — skipping"
        next
      end

      defs    = {}
      seen    = Set.new
      packages = spec[:packages]
      skip = Set.new(spec[:skip] || [])

      packages.each do |p|
        $logger.debug "#{spec[:root]}: Adding package #{p} to document"
        model = Model.model_for_name(p)
        if model.nil?
          $logger.warn "Package #{p} not found — skipping"
        else
          add_package(defs, seen, model, skip)
        end
      end

      # Remove envelope classes that belong to other documents.  Shared packages
      # (e.g. Fundamentals > MTConnect Protocol) contain response-document sub-
      # packages for all four envelopes; only the current document's own envelope
      # class should appear in its $defs.
      own_envelope = spec[:envelope]
      (docs.map { |d| d[:envelope] } - [own_envelope]).each do |foreign|
        defs.delete(foreign)
        defs.delete("#{foreign}ExceptionsReport")
      end

      add_timeseries_variants(defs)
      add_datasets_and_tables(defs)
      patch_events_wrappers(defs)
      prune_missing_refs(defs)

      suffix = @@draft_spec[:suffix]
      file = "#{spec[:envelope]}_#{$mtconnect_version}#{suffix}.schema.json"
      schema = {
        '$schema'     => schema_uri,
        id_key        => "https://schemas.mtconnect.org/schemas/#{file}",
        'title'       => spec[:envelope],
        'description' => "MTConnect #{spec[:envelope]} response, v2 JSON, " \
                         "from SysML model v#{$mtconnect_version}.",
        'type'        => 'object',
        'required'    => [spec[:envelope]],
        'properties'  => {
          '$schema'       => { 'type' => 'string' },
          spec[:envelope] => { '$ref' => "#{ref_prefix}#{spec[:envelope]}" }
        },
        'additionalProperties' => false
      }
      schema[defs_key] = defs

      out = File.join(@@output_dir, file)
      File.open(out, 'w') { |f| f.write(JSON.pretty_generate(schema)) }
      $logger.info "  Wrote #{out} (#{defs.size} definitions)"
    end
  end
end