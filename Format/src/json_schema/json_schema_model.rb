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