require 'model'
require 'json'
require 'set'
require 'json_schema/json_schema_type'

class JsonSchemaModel < Model
  @@output_dir = nil
  @@generator  = nil
  @@draft_spec = nil

  def self.output_dir=(dir);    @@output_dir = dir;    end
  def self.output_dir;          @@output_dir;          end
  def self.generator_class=(g); @@generator = g;       end
  def self.draft_spec=(s);      @@draft_spec = s;      end
  def self.draft_spec;          @@draft_spec;          end
  def self.type_class;          JsonSchemaType;        end
  def self.diagram_class;       Diagram;               end

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
        v.is_a?(Hash) && v.size == 1 &&
          (ref = v['$ref']) &&
          ref.start_with?(prefix) &&
          !defs.key?(ref[prefix.length..])
      end.keys
      to_remove.each do |key|
        props.delete(key)
        schema['required']&.delete(key)
        $logger.debug "  Pruned missing-ref property: #{key}"
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

  def self.add_datasets_and_tables(defs)
    # The SysML model has no Dataset or Table types; these must be injected
    # based on the presence of Dataset/Table stereotypes on any type.
    ds_entries = {}
    enum = Type.type_for_name('EventEnum')
    literals = enum.literals
    defs.each do |name, schema|
      t = Type.type_for_name(name)
      next unless name == 'Event' or (t && t.respond_to?(:is_a_type?) && t.is_a_type?('Event'))
      table = t.documentation.definition.include?('tabular')

      result = t.relation('result')
      if result and result.target and result.target.type and result.target.type.type == 'uml:Class'
        target = result.target.type
        dataSet = target.parents.first.name == 'DataSet'
      end

      if table or dataSet
        ds_name = table ? "#{name}Table" : "#{name}DataSet"
        next if defs.key?(ds_name) || ds_entries.key?(ds_name)
        ds = JSON.parse(JSON.generate(schema))
        props = ds['properties'] ||= {}
        props['value'] = { 'type' => 'object' }
        props['count'] = { 'type' => 'integer' }
        ds['title'] = ds_name
        ds_entries[ds_name] = ds
        $logger.debug "  DataSet/Table variant: #{ds_name}"
      end
    end
    unless ds_entries.empty?
      defs.merge!(ds_entries)
      $logger.info "  Added #{ds_entries.size} DataSet/Table variants"
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

      add_timeseries_variants(defs)
      add_datasets_and_tables(defs)
      prune_missing_refs(defs)

      schema = {
        '$schema'     => schema_uri,
        id_key        => "https://schemas.mtconnect.org/v#{$mtconnect_version}/#{spec[:envelope]}.schema.json",
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

      suffix = @@draft_spec[:suffix]
      out = File.join(@@output_dir,
                      "#{spec[:envelope]}_#{$mtconnect_version}#{suffix}.schema.json")
      File.open(out, 'w') { |f| f.write(JSON.pretty_generate(schema)) }
      $logger.info "  Wrote #{out} (#{defs.size} definitions)"
    end
  end
end