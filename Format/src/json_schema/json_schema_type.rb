require 'type'

class JsonSchemaType < Type

  PRIMITIVES = {
    'string'             => { 'type' => 'string' },
    'ID'                 => { 'type' => 'string' },
    'IDREF'              => { 'type' => 'string' },
    'NMTOKEN'            => { 'type' => 'string' },
    'token'              => { 'type' => 'string' },
    'integer'            => { 'type' => 'integer' },
    'int'                => { 'type' => 'integer' },
    'unsignedInt'        => { 'type' => 'integer', 'minimum' => 0 },
    'positiveInteger'    => { 'type' => 'integer', 'minimum' => 1 },
    'nonNegativeInteger' => { 'type' => 'integer', 'minimum' => 0 },
    'long'               => { 'type' => 'integer' },
    'float'              => { 'type' => 'number' },
    'double'             => { 'type' => 'number' },
    'decimal'            => { 'type' => 'number' },
    'boolean'            => { 'type' => 'boolean' },
    'dateTime'           => { 'type' => 'string', 'format' => 'date-time' },
    'date'               => { 'type' => 'string', 'format' => 'date' },
    'time'               => { 'type' => 'string', 'format' => 'time' },
    'duration'           => { 'type' => 'string', 'format' => 'duration' },
    'anyURI'             => { 'type' => 'string', 'format' => 'uri' },
    'QName'              => { 'type' => 'string' }
  }.freeze

  # SysML object types that the JSON wire format encodes as a plain primitive
  # (number or fixed-size numeric array) rather than a nested object ref.
  WIRE_FORMAT_PRIMITIVES = {
    'Nominal'             => { 'type' => 'number' },
    'Maximum'             => { 'type' => 'number' },
    'Minimum'             => { 'type' => 'number' },
    'UpperLimit'          => { 'type' => 'number' },
    'LowerLimit'          => { 'type' => 'number' },
    'UpperWarning'        => { 'type' => 'number' },
    'LowerWarning'        => { 'type' => 'number' },
    # 3-element numeric vectors used for geometry.
    'AbstractAxis'        => { 'type' => 'array', 'items' => { 'type' => 'number' },
                               'minItems' => 3, 'maxItems' => 3 },
    'AbstractOrigin'      => { 'type' => 'array', 'items' => { 'type' => 'number' },
                               'minItems' => 3, 'maxItems' => 3 },
    'AbstractTranslation' => { 'type' => 'array', 'items' => { 'type' => 'number' },
                               'minItems' => 3, 'maxItems' => 3 },
    'AbstractRotation'    => { 'type' => 'array', 'items' => { 'type' => 'number' },
                               'minItems' => 3, 'maxItems' => 3 },
    'AbstractScale'       => { 'type' => 'array', 'items' => { 'type' => 'number' } },
  }.freeze

  # Per-property type overrides keyed by "TypeName.propertyName".
  # These correct mismatches between the SysML attribute type and the
  # actual JSON wire format value (e.g. attributes typed as xs:string
  # in the model but serialised as integers in v2 JSON).
  PROPERTY_TYPE_OVERRIDES = {
    # Header numeric attributes are integers in the wire format.
    'Header.assetBufferSize' => { 'type' => 'integer', 'minimum' => 0 },
    'Header.bufferSize'      => { 'type' => 'integer', 'minimum' => 0 },
    'Header.assetCount'      => { 'type' => 'integer', 'minimum' => 0 },
    'Header.instanceId'      => { 'type' => 'integer' },
    'Header.firstSequence'   => { 'type' => 'integer' },
    'Header.lastSequence'    => { 'type' => 'integer' },
    'Header.nextSequence'    => { 'type' => 'integer' },
    # Constraints.Value items are { "value": "…" } objects in the wire format,
    # not plain strings. The SysML attribute is typed string[0..*].
    'Constraints.Value'      => { 'type' => 'array',
                                  'items' => { 'type' => 'object',
                                               'properties' => { 'value' => { 'type' => 'string' } } } },
    # Observation.result is typed 'string' in the SysML model (XML default), but in JSON
    # the wire format uses 'value' (renamed).  Keep the Observation base schema permissive
    # so Condition (which can omit value) and allOf chains work without conflicts.
    'Observation.result'     => {},
    # Sample.result is typed 'float' in SysML.  The base schema is kept permissive
    # so that allOf chains for 3-D subtypes (PathPosition, Orientation, …) don't
    # conflict.  Leaf 1-D types get the strict oneOf[number,"UNAVAILABLE"] override
    # in class_schema_flat; 3-D types get the array override there and in
    # collect_property_schemas; TimeSeries variants are handled by add_timeseries_variants.
    'Sample.result'          => {},
    # nativeUnits on DataItem and SolidModel may be from UnitEnum or NativeUnitEnum.
    'DataItem.nativeUnits'   => { 'type' => 'string' },
    'SolidModel.nativeUnits' => { 'type' => 'string' },
    # Condition.type in the wire format carries the DataItem type name (e.g. LOAD,
    # POSITION, SYSTEM) — the SysML model uses the narrower ConditionEnum, but
    # streaming data uses the full DataItemTypeEnum vocabulary, so accept any string.
    'Condition.type'         => { 'type' => 'string' },
    # Sample.duration is a number (seconds) in the wire format; SysML types it as
    # xs:duration (string), but JSON agents emit a float.
    'Sample.duration'        => { 'type' => 'number' },
    # Transformation uses geometric Translation/Rotation vectors ([x,y,z] arrays).
    # These names collide with Event observation subtypes in the SysML model;
    # the wire format encodes them as numeric arrays, not objects.
    'Transformation.Translation' => { 'type' => 'array', 'items' => { 'type' => 'number' },
                                      'minItems' => 3, 'maxItems' => 3 },
    'Transformation.Rotation'    => { 'type' => 'array', 'items' => { 'type' => 'number' },
                                      'minItems' => 3, 'maxItems' => 3 },
    # CoordinateSystem.Origin is also a [x,y,z] numeric array in the wire format.
    'CoordinateSystem.Origin'    => { 'type' => 'array', 'items' => { 'type' => 'number' },
                                      'minItems' => 3, 'maxItems' => 3 },
    # SolidModel transformation vectors
    'SolidModel.Translation'     => { 'type' => 'array', 'items' => { 'type' => 'number' },
                                      'minItems' => 3, 'maxItems' => 3 },
    'SolidModel.Rotation'        => { 'type' => 'array', 'items' => { 'type' => 'number' },
                                      'minItems' => 3, 'maxItems' => 3 },
    # Motion.Axis is a unit-vector [x,y,z] in the wire format — same encoding as
    # AbstractAxis — not an Axis component reference.
    'Motion.Axis'                => { 'type' => 'array', 'items' => { 'type' => 'number' },
                                      'minItems' => 3, 'maxItems' => 3 },
    # CuttingItem.indices: the SysML attribute has upperValue='*' so it generates
    # as a string array, but the JSON wire format serialises indices as a single
    # comma-separated string (e.g. "1" or "1-4,6").
    'CuttingItem.indices'        => { 'type' => 'string' },
  }.freeze

  # Extra properties injected into specific type schemas for wire-format
  # attributes that are not modelled in the SysML (e.g. envelope metadata).
  WIRE_FORMAT_EXTRA_PROPS = {
    'MTConnectDevices' => {
      'jsonVersion'   => { 'type' => 'integer' },
      'schemaVersion' => { 'type' => 'string' },
    },
    'MTConnectAssets' => {
      'jsonVersion'   => { 'type' => 'integer' },
      'schemaVersion' => { 'type' => 'string' },
      # Some agents embed $schema inside the envelope rather than at the document root.
      '$schema'       => { 'type' => 'string' },
    },
    'MTConnectError' => {
      'jsonVersion'   => { 'type' => 'integer' },
      'schemaVersion' => { 'type' => 'string' },
    },
    'MTConnectStreams' => {
      'jsonVersion'   => { 'type' => 'integer' },
      'schemaVersion' => { 'type' => 'string' },
    },
    'Header' => {
      'schemaVersion' => { 'type' => 'string' },
      # Streams-document sequence fields — absent from Fundamentals SysML Header class.
      'bufferSize'    => { 'type' => 'integer', 'minimum' => 0 },
      'nextSequence'  => { 'type' => 'integer' },
      'lastSequence'  => { 'type' => 'integer' },
      'firstSequence' => { 'type' => 'integer' },
    },
    'Component' => {
      'hash' => { 'type' => 'string' },
    },
    'Agent' => {
      'mtconnectVersion' => { 'type' => 'string' },
    },
    'Observation' => {
      'value'     => {},
      'assetType' => { 'type' => 'string' },
      'count'     => { 'type' => 'integer' },
    },
  }.freeze

  def to_json_schema
    case @type
    when 'uml:Enumeration'                   then enumeration_schema
    when 'uml:DataType', 'uml:PrimitiveType' then datatype_schema
    when 'uml:Class', 'uml:AssociationClass' then class_schema
    else                                          { 'description' => "Unsupported UML kind: #{@type}" }
    end
  end

  def referenced_types
    refs = []
    get_parents.each { |p| refs << p unless p.model.root.name == 'Glossary' }
    @relations.each do |r|
      next unless r.is_a?(Relation::Attribute) || r.is_a?(Relation::Association)
      next if r.respond_to?(:inversion) && r.inversion
      tgt = r.target && r.target.type
      next unless tgt
      next if primitive?(tgt) || WIRE_FORMAT_PRIMITIVES.key?(tgt.name)
      refs << tgt
      # For AssociationClass (thru) relations the target is the association class
      # itself; the final_target holds the actual peer type (e.g. CuttingItem in
      # hasCuttingItem).  Add both so the BFS can reach the peer class.
      if r.respond_to?(:thru?) && r.thru?
        ft = r.respond_to?(:final_target) && r.final_target && r.final_target.type
        refs << ft if ft && !primitive?(ft) && !WIRE_FORMAT_PRIMITIVES.key?(ft.name)
      end
      # Expand direct subtypes for base types whose concrete subtypes appear as
      # wrapper-key discriminators (e.g. ConfigurationRelationship →
      # ComponentRelationship / DeviceRelationship / AssetRelationship).
      if EXPAND_SUBTYPES_FOR.include?(tgt.name)
        sub = tgt.children rescue nil
        (sub || []).each { |c| refs << c unless c.model.root.name == 'Glossary' }
      end
      # When the target is the base type for a SUBTYPE_KEY_CONTAINERS wrapper,
      # add all its descendant type OBJECTS (not just names) via tree traversal.
      # This ensures every type referenced by $ref in the wrapper gets into $defs,
      # even when name collisions prevent normal BFS traversal from reaching them.
      if SUBTYPE_KEY_CONTAINERS.value?(tgt.name)
        JsonSchemaType.all_subtype_objects_of(tgt.name).each do |sub_t|
          refs << sub_t unless sub_t.model.root.name == 'Glossary'
        end
      end
    end
    refs.compact.uniq { |t| t.name }
  end

  private

  # ---------- Class ----------------------------------------------------

  def class_schema
    if JsonSchemaModel.use_unevaluated?
      class_schema_modern
    else
      class_schema_flat
    end
  end

  # Flat: walk all ancestors, merge everything into a single self-contained
  # schema.  Safe under any draft including Draft 4.
  def class_schema_flat
    props, required, child_groups = collected_properties_recursive
    child_groups.each { |k, v| props[k] = v }

    # Apply per-category value type constraints for leaf Sample types.
    # The base Sample.result schema is kept as {} to avoid allOf conflicts;
    # concrete types get the correct type here where there is no allOf chain.
    if props.key?('value')
      if is_3d_sample?
        # 3-D types (PathPosition, Orientation, …): value is a [x,y,z] numeric array.
        props['value'] = { 'type' => 'array', 'items' => { 'type' => 'number' } }
      elsif is_a_type?('Sample')
        # 1-D types: value is a number for normal readings, or "UNAVAILABLE".
        props['value'] = { 'oneOf' => [{ 'type' => 'number' },
                                       { 'type' => 'string', 'enum' => ['UNAVAILABLE'] }] }
      end
    end

    # Non-leaf types (those with subtypes) must not close their schema with
    # additionalProperties: false — instances of a concrete subtype may carry
    # extra properties not known to the base schema.
    leaf = @children.empty?

    base = { 'type' => 'object', 'title' => @name }
    doc = plain_documentation
    base['description']          = doc if doc
    base['properties']           = props unless props.empty?
    base['required']             = required.sort.uniq unless required.empty?
    base['additionalProperties'] = false if leaf
    base
  end

  # Modern: non-leaf types use allOf + $ref chains so subtypes can extend them.
  # Leaf types use a flat merged schema with additionalProperties: false —
  # unevaluatedProperties tracing through deep $ref chains is inconsistently
  # implemented across JSON Schema validators (e.g. IDE validators), so merging
  # all inherited properties explicitly is the only universally safe approach.
  def class_schema_modern
    return class_schema_flat if @children.empty?

    props, required, child_groups = collect_property_schemas
    child_groups.each { |k, v| props[k] = v }

    # Apply value type constraint for non-base 1-D Sample subtypes.
    # In allOf mode the base Sample schema keeps value as {} (permissive) so it
    # doesn't conflict with 3-D subtypes in the allOf chain.  But a concrete 1-D
    # Sample subtype (Position, Velocity, …) with its own allOf element CAN carry
    # the scalar constraint without causing conflicts, because no type in the
    # generated schema extends these intermediate types via allOf.
    if is_a_type?('Sample') && @name != 'Sample' && !is_3d_sample?
      props['value'] = { 'oneOf' => [{ 'type' => 'number' },
                                      { 'type' => 'string', 'enum' => ['UNAVAILABLE'] }] }
    end

    own = { 'type' => 'object', 'title' => @name }
    doc = plain_documentation
    own['description'] = doc if doc
    own['properties']  = props unless props.empty?
    own['required']    = required.sort.uniq unless required.empty?

    parents = get_parents.reject { |p| p.model.root.name == 'Glossary' }
    if parents.empty?
      own
    else
      { 'allOf' => parents.map { |p| { '$ref' => "#{JsonSchemaModel.ref_prefix}#{p.name}" } } + [own] }
    end
  end

  # Collect the wire-format property schemas for the current type only
  # (not ancestor properties — those are handled via allOf in modern mode
  # or collected_properties_recursive in flat mode).
  def collect_property_schemas
    own_props    = {}
    required     = []
    child_groups = {}         # attribute-array groups (e.g. Constraints.Value)
    wrapper_groups = Hash.new { |h, k| h[k] = {} }  # grouped association arrays

    # Inject wire-format-only properties absent from the SysML model.
    wire_format_extra_props.each { |k, v| own_props[k] = v }

    @relations.each do |r|
      next unless r.is_a?(Relation::Attribute) || r.is_a?(Relation::Association)
      next if r.name.nil? || r.name.empty?

      tgt = r.target && r.target.type
      next unless tgt

      if r.is_a?(Relation::Association)
        # Inverted relations (isXxxOf) are navigation artefacts of the UML
        # model that do not appear in the JSON wire format.
        next if r.respond_to?(:inversion) && r.inversion

        if r.is_array?
          container, key = array_wrapper_for(tgt)
          next unless container
          if key.nil?
            # Nil key means a plain array property with no outer wrapper object
            # (e.g. DeviceStream.ComponentStream → "ComponentStream": [...]).
            own_props[container] ||= { 'type' => 'array', 'items' => ref_for(tgt) }
          else
            # Register this type under the appropriate container; duplicates are
            # harmless because we just overwrite with the same schema.
            wrapper_groups[container][key] ||= array_items_schema(tgt)
          end
          # Container wrapper objects are always optional in the wire format.
        else
          prop_name = has_prop_name(r, tgt)
          next unless prop_name
          override_key = "#{@name}.#{prop_name}"
          schema =
            if (override = PROPERTY_TYPE_OVERRIDES[override_key])
              override.dup
            else
              build_scalar_schema(tgt)
            end
          # Wrap in array for properties where SysML bounded multiplicity (e.g.
          # upperValue='3') prevents is_array? from firing, but wire format sends
          # a JSON array.
          schema = { 'type' => 'array', 'items' => schema } if FORCE_ARRAY_PROPERTY_REFS.include?(override_key)
          schema['description'] = rel_doc(r) if rel_doc(r)
          schema['default']     = r.default  if r.respond_to?(:default) && r.default
          own_props[prop_name]  = schema
          required << prop_name unless r.is_optional? || has_rel_default?(r) ||
                                       WIRE_FORMAT_OPTIONAL.include?("#{@name}.#{prop_name}")
        end

      else
        # Relation::Attribute — direct scalar or array property.
        # Skip UML navigation attributes that are not wire-format properties:
        # - observes* attributes (e.g. observesLoad) representing observation links
        # - reverse-navigation attributes whose name is the lowercase of the target
        #   type (e.g. device → Device, adapter → Adapter, axis → Axis)
        next if r.name.to_s.start_with?('observes')
        tgt_name = tgt.name.to_s
        next if r.name.to_s == tgt_name.downcase && !primitive?(tgt)
        # SysML model names the observation data property 'result'; JSON wire format uses 'value'.
        attr_name    = r.name.to_s == 'result' ? 'value' : r.name.to_s
        override_key = "#{@name}.#{r.name}"
        if r.is_array?
          if (override = PROPERTY_TYPE_OVERRIDES[override_key])
            own_props[attr_name] = override
            # Array overrides are always considered optional.
          else
            # Standard attribute array: accumulate into child_groups so that
            # collected_properties_recursive can merge across the ancestor chain.
            child_groups[attr_name] ||= { 'type' => 'array', 'items' => { 'oneOf' => [] } }
            child_groups[attr_name]['items']['oneOf'] << ref_for(tgt)
            required << attr_name unless r.is_optional? || has_rel_default?(r)
          end
        else
          schema =
            if (override = PROPERTY_TYPE_OVERRIDES[override_key])
              override.dup
            else
              build_attr_schema(r, tgt)
            end
          # For 3-D sample types in allOf schemas (e.g. PathPosition), the value
          # is a numeric array regardless of the SysML attribute type.
          schema = { 'type' => 'array', 'items' => { 'type' => 'number' } } if attr_name == 'value' && is_3d_sample?
          # Event subtypes: UNAVAILABLE is always a valid sentinel in addition to
          # the specific enum values (e.g. ExecutionEnum).  Skip the base Event
          # class whose value override is already {} (fully permissive).
          if attr_name == 'value' && is_a_type?('Event') && @name != 'Event' && !schema.empty?
            schema = { 'oneOf' => [schema, { 'type' => 'string', 'enum' => ['UNAVAILABLE'] }] }
          end
          doc = rel_doc(r)
          schema['description'] = doc if doc
          schema['default']     = r.default if r.respond_to?(:default) && r.default
          own_props[attr_name]  = schema
          wire_key = "#{@name}.#{attr_name}"
          forced   = WIRE_FORMAT_REQUIRED.include?(wire_key)
          required << attr_name unless (!forced && r.is_optional?) || has_rel_default?(r) ||
                                      WIRE_FORMAT_OPTIONAL.include?(wire_key)
        end
      end
    end

    # Collapse single-entry oneOf arrays in child_groups.
    child_groups.each_value do |g|
      one = g['items']['oneOf']
      g['items'] = one.first if one && one.length == 1
    end

    # Materialise grouped association arrays into wrapper object properties.
    wrapper_groups.each do |container, keys_map|
      next if keys_map.empty?
      own_props[container] = build_wrapper_schema(container, keys_map)
    end

    [own_props, required, child_groups]
  end

  def collected_properties_recursive
    merged_props    = {}
    merged_required = []
    merged_groups   = {}

    ancestor_chain.each do |t|
      props, req, groups = t.send(:collect_property_schemas)
      merged_props.merge!(props)
      merged_required.concat(req)
      groups.each do |k, v|
        if merged_groups.key?(k)
          a = merged_groups[k]
          a_items = a['items']['oneOf'] ? a['items']['oneOf'] : [a['items']]
          b_items = v['items']['oneOf'] ? v['items']['oneOf'] : [v['items']]
          merged_groups[k] = { 'type' => 'array',
                               'items' => { 'oneOf' => (a_items + b_items).uniq } }
        else
          merged_groups[k] = v
        end
      end
    end

    merged_groups.each_value do |g|
      one = g['items']['oneOf']
      g['items'] = one.first if one && one.length == 1
    end

    [merged_props, merged_required, merged_groups]
  end

  def ancestor_chain
    chain = []
    walk = ->(t) {
      t.get_parents.each { |p| walk.call(p) unless p.model.root.name == 'Glossary' }
      chain << t unless chain.include?(t)
    }
    walk.call(self)
    chain
  end

  # ---------- Wire-format mapping helpers ------------------------------

  # Wire-format JSON property name for a scalar (non-array) has* association.
  # Returns nil to indicate the relation should be omitted entirely.
  #
  # Rules:
  #   - Only "has[A-Z]…" associations appear as object properties in the wire
  #     format; semantic relations (observes, madeObservation, …) do not.
  #   - The JSON key is the target type name, NOT the association name.
  #   - For types in WIRE_FORMAT_PRIMITIVES the target type name is derived
  #     by stripping the leading "has" (e.g. hasAxis → Axis).
  def has_prop_name(rel, tgt)
    return nil unless rel.name.to_s =~ /\Ahas[A-Z]/
    WIRE_FORMAT_PRIMITIVES.key?(tgt.name) ? rel.name[3..] : tgt.name
  end

  # Container name used for Component-subtype arrays:
  #   - MTConnectDevices groups them under "Devices"
  #   - every other Component groups them under "Components"
  def component_container_name
    @name == 'MTConnectDevices' ? 'Devices' : 'Components'
  end

  # Returns [container_name, item_key] for an array-valued association target,
  # or nil if the association should be omitted from the wire-format schema.
  #
  # The container name becomes a wrapper object property; item_key is the
  # named sub-array within that wrapper object.
  def array_wrapper_for(tgt)
    n = tgt.name
    if tgt.is_a_type?('DataItem')
      ['DataItems', 'DataItem']
    elsif tgt.is_a_type?('Component')
      # Use the concrete target type name as the sub-array key so that, e.g.,
      # hasAuxiliary→Auxiliaries becomes Components.Auxiliaries.
      [component_container_name, n]
    elsif tgt.is_a_type?('Composition')
      ['Compositions', n]
    elsif n =~ /Relationship$/
      ['Relationships', n]
    elsif tgt.is_a_type?('CoordinateSystem')
      ['CoordinateSystems', n]
    elsif tgt.is_a_type?('Specification')
      ['Specifications', n]
    elsif tgt.is_a_type?('Filter')
      ['Filters', n]
    elsif tgt.is_a_type?('Channel')
      ['Channels', n]
    elsif tgt.is_a_type?('ToolingMeasurement')
      # Wire format: { "Measurements": { "CuttingDiameter": [...], ... } }
      # Subtype names are used as keys; enumerated via SUBTYPE_KEY_CONTAINERS.
      ['Measurements', n]
    elsif n == 'EntryDefinition'
      ['EntryDefinitions', 'EntryDefinition']
    elsif n == 'CellDefinition'
      ['CellDefinitions', 'CellDefinition']
    # MTConnectStreams hierarchy
    elsif n == 'DeviceStream'
      ['Streams', 'DeviceStream']
    elsif n == 'ComponentStream'
      # Wire format puts ComponentStream as a plain array on DeviceStream,
      # not inside an outer wrapper object; nil key signals direct array.
      ['ComponentStream', nil]
    elsif tgt.is_a_type?('Event')
      # Use the concrete type name (e.g. RotaryMode, Execution) as the wrapper
      # key so each key validates against the specific observation schema.
      ['Events', n]
    elsif tgt.is_a_type?('Sample')
      ['Samples', n]
    elsif tgt.is_a_type?('Condition')
      ['Condition', n]
    # MTConnectAssets hierarchy
    elsif tgt.is_a_type?('Asset')
      ['Assets', n]
    else
      nil
    end
  end

  # JSON Schema fragment for the items of an array association.
  def array_items_schema(tgt)
    { 'type' => 'array', 'items' => ref_for(tgt) }
  end

  # Scalar Association properties that the SysML model marks with bounded
  # multiplicity > 1 (e.g. upperValue='3') rather than '*'.  is_array? only
  # fires for '*', so these land in the scalar branch — but the wire format
  # sends them as JSON arrays.  Keyed as "TypeName.propName".
  FORCE_ARRAY_PROPERTY_REFS = Set[
    'CuttingToolLifeCycle.ToolLife',   # upperValue='3' in SysML; wire format is array
    'CuttingItem.ItemLife',            # upperValue='3' in SysML; wire format is array
  ].freeze

  # Properties that the SysML marks optional but that are always required in
  # the JSON wire format.  Keyed as the emitted "TypeName.propName" (i.e. after
  # the result → value rename has been applied).  This overrides is_optional?.
  WIRE_FORMAT_REQUIRED = Set[
    'Sample.value',   # 'result' renamed to 'value'; always present (UNAVAILABLE when indeterminate)
  ].freeze

  # Properties that the SysML marks required but that are absent (or implicit
  # from context) in the JSON wire format.  Keyed as "TypeName.propName".
  # In streaming observations, "type" is encoded as the wrapper-object key and
  # "units" is defined in the Devices document — neither is repeated per item.
  WIRE_FORMAT_OPTIONAL = Set[
    'Observation.type',    # implicit from wrapper key (e.g. "Load", "RotaryMode")
    'Sample.type',
    'Sample.units',        # defined in Devices document, not repeated in streams
    'Event.type',
    'Condition.conditionId', # not universally present in current implementations
    # Devices-only header fields; absent in Streams/Assets/Error documents.
    'Header.assetBufferSize',
    'Header.assetCount',
  ].freeze

  # Base types whose direct subtypes appear as discriminator keys in wire-format
  # wrapper objects (e.g. "ComponentRelationship": [...]) and therefore need
  # their own $defs entries.  Only these types trigger child traversal in
  # referenced_types; all other base types are handled via the flexible-wrapper
  # additionalProperties reference to the base type alone.
  EXPAND_SUBTYPES_FOR = %w[
    ConfigurationRelationship
    AbstractDataItemRelationship
  ].freeze

  # For the Relationships container, the base type depends on context:
  # Configuration uses ConfigurationRelationship; DataItem uses
  # AbstractDataItemRelationship.  The key in the keys_map IS the base type name.
  RELATIONSHIP_FLEXIBLE_BASES = %w[
    ConfigurationRelationship
    AbstractDataItemRelationship
  ].freeze

  # Containers where the wire-format wrapper key IS the concrete subtype name
  # (e.g. "Linear", "CuttingTool", "RotaryMode").  The SysML model uses a
  # generic parent association (hasComponent: Component[*]) so keys_map only
  # contains the abstract base.  We instead enumerate all subtypes from the
  # model's type hierarchy and emit them as named properties.
  SUBTYPE_KEY_CONTAINERS = {
    'Components'    => 'Component',
    'Devices'       => 'Device',
    'Events'        => 'Event',
    'Samples'       => 'Sample',
    'Assets'        => 'Asset',
    'Specifications'=> 'Specification',
    'Measurements'  => 'ToolingMeasurement',
    'Errors'        => 'Error',
  }.freeze

  # Vendor-extension namespace pattern for wrapper keys (e.g. "x:ExtendedEventType").
  # Single-letter prefix (excluding 'm'/'M' reserved for MTConnect), colon, then
  # a PascalCase or UPPER_CASE identifier.
  EXTENSION_KEY_PATTERN = '^[a-ln-zA-LN-Z]:[A-Za-z_][A-Za-z0-9_]*$'.freeze

  # Build a wrapper object schema from a container → {key → array-schema} map.
  def build_wrapper_schema(container, keys_map)
    if container == 'Relationships'
      # Infer the base type from the key that was recorded by array_wrapper_for.
      rel_base = keys_map.keys.find { |k| RELATIONSHIP_FLEXIBLE_BASES.include?(k) }
      if rel_base
        items = { '$ref' => "#{JsonSchemaModel.ref_prefix}#{rel_base}" }
        { 'type' => 'object', 'additionalProperties' => { 'type' => 'array', 'items' => items } }
      else
        { 'type' => 'object', 'properties' => keys_map, 'additionalProperties' => false }
      end

    elsif container == 'Condition'
      # Condition wrapper keys are condition-state names (Normal, Fault, Warning …),
      # not Condition subtype names — keep flexible so any state passes.
      items = { '$ref' => "#{JsonSchemaModel.ref_prefix}Condition" }
      { 'type' => 'object', 'additionalProperties' => { 'type' => 'array', 'items' => items } }

    elsif container == 'Filters'
      # The SysML model has two classes both named "Filter": the physical
      # Component::Filter and the DataItem::Filter.  The Component one wins
      # the $defs name race, so we inline the DataItem filter schema here
      # to avoid the collision.  Look up FilterEnum dynamically so that
      # any additions to the enumeration are picked up automatically.
      fe = Type.type_for_name('FilterEnum')
      type_schema =
        if fe && fe.respond_to?(:literals)
          values = fe.literals.map(&:name).compact.uniq
          values.empty? ? { 'type' => 'string' } :
            { 'oneOf' => [
                { 'type' => 'string', 'enum' => values },
                { 'type' => 'string', 'pattern' => '^x:[A-Z_][A-Z0-9_]*$' }
              ] }
        else
          { 'type' => 'string' }
        end
      item = {
        'type'       => 'object',
        'properties' => { 'value' => {}, 'type' => type_schema },
        'unevaluatedProperties' => false
      }
      { 'type'       => 'object',
        'properties' => { 'Filter' => { 'type' => 'array', 'items' => item } },
        'additionalProperties' => false }

    elsif (base_name = SUBTYPE_KEY_CONTAINERS[container])
      # Enumerate every subtype of the base as a named property so each key
      # in the wire-format wrapper is validated against its specific schema.
      sub_names = JsonSchemaType.all_subtypes_of(base_name)
      if sub_names.empty?
        items = { '$ref' => "#{JsonSchemaModel.ref_prefix}#{base_name}" }
        { 'type' => 'object', 'additionalProperties' => { 'type' => 'array', 'items' => items } }
      else
        props = sub_names.each_with_object({}) do |sn, h|
          h[sn] = { 'type' => 'array', 'items' => { '$ref' => "#{JsonSchemaModel.ref_prefix}#{sn}" } }
          # Every Sample subtype also has a TimeSeries representation (XxxTimeSeries)
          # with value as a float array and an additional sampleCount property.
          if container == 'Samples'
            h["#{sn}TimeSeries"] = { 'type' => 'array',
                                     'items' => { '$ref' => "#{JsonSchemaModel.ref_prefix}#{sn}TimeSeries" } }
          end
        end
        ext_items = { 'type' => 'array', 'items' => { '$ref' => "#{JsonSchemaModel.ref_prefix}#{base_name}" } }
        { 'type'              => 'object',
          'properties'        => props,
          'patternProperties' => { EXTENSION_KEY_PATTERN => ext_items },
          'additionalProperties' => false }
      end

    else
      { 'type' => 'object', 'properties' => keys_map, 'additionalProperties' => false }
    end
  end

  # Walk the type hierarchy from base_name and return the actual TYPE OBJECTS of
  # all descendants (excluding Glossary types).  Unlike all_subtypes_of (which
  # returns names and is used for wrapper schema generation), this method returns
  # objects so that referenced_types can add them to the BFS pending queue without
  # going through Type.type_for_name — which may return the wrong type when
  # multiple SysML classes share the same name.
  def self.all_subtype_objects_of(base_name)
    @subtype_obj_cache ||= {}
    return @subtype_obj_cache[base_name] if @subtype_obj_cache.key?(base_name)
    base = type_instance_with_children(base_name)
    unless base
      @subtype_obj_cache[base_name] = []
      return []
    end
    result = []
    seen   = Set.new
    queue  = [base]
    until queue.empty?
      t = queue.shift
      next if seen.include?(t.name)
      seen << t.name
      children = (t.children rescue nil) || []
      children.each do |child|
        next if child.model.root.name == 'Glossary'
        result << child
        queue  << child
      end
    end
    result.unshift(base) unless base.respond_to?(:abstract?) && base.abstract?
    @subtype_obj_cache[base_name] = result.uniq { |t| t.name }
  end

  # Walk the type hierarchy from base_name and return the names of all
  # descendant types (direct and indirect children, excluding Glossary types).
  # Results are cached across the run since the model does not change.
  def self.all_subtypes_of(base_name)
    @subtype_cache ||= {}
    return @subtype_cache[base_name] if @subtype_cache.key?(base_name)
    base = type_instance_with_children(base_name)
    unless base
      @subtype_cache[base_name] = []
      return []
    end
    result = []
    seen   = Set.new
    queue  = [base]
    until queue.empty?
      t = queue.shift
      next if seen.include?(t.name)
      seen << t.name
      children = (t.children rescue nil) || []
      children.each do |child|
        next if child.model.root.name == 'Glossary'
        result << child.name
        queue  << child
      end
    end
    # Include the base type itself when it's not abstract — concrete base types
    # can appear as wire-format wrapper keys (e.g. "Device" in the Devices object).
    result.unshift(base_name) unless base.respond_to?(:abstract?) && base.abstract?
    @subtype_cache[base_name] = result.uniq
  end

  # When a SysML package exports a class with the same name as one in another
  # package, Ruby's @@types_by_name only retains the last registration.  That
  # stale entry may not have any children populated (connect_children wires
  # children to the type object that owns the actual UML generalizations).
  # Scan @@types_by_id (shared class variable) to find the instance that has
  # the most children, which is the canonical model type.
  def self.type_instance_with_children(name)
    candidates = @@types_by_id.values.select do |t|
      t.name == name && t.model.root.name != 'Glossary'
    end
    return Type.type_for_name(name) if candidates.empty?
    candidates.max_by { |t| (t.children rescue []).size }
  end

  # ---------- Extra / dynamic wire-format properties -------------------

  # Extra wire-format properties for specific types that cannot be derived
  # purely from the SysML model.  Called from collect_property_schemas.
  # Unlike the WIRE_FORMAT_EXTRA_PROPS constant, this method may emit
  # draft-aware $ref strings via JsonSchemaModel.ref_prefix.
  def wire_format_extra_props
    base = WIRE_FORMAT_EXTRA_PROPS[@name] ? WIRE_FORMAT_EXTRA_PROPS[@name].dup : {}
    case @name
    when 'CuttingToolLifeCycle'
      # CutterStatus is a named uml:Association (not a class); the wire format
      # encodes it as { "Status": [{...}] }.  hasCutterStatus is array-typed in
      # the SysML → skipped by array_wrapper_for → must be injected here.
      base['CutterStatus'] ||= cutter_status_schema
      # hasCuttingItem uses CuttingItems (AssociationClass) as its target,
      # making it a scalar $ref in the wire format.
      base['CuttingItems'] ||= { '$ref' => "#{JsonSchemaModel.ref_prefix}CuttingItems" }
    when 'CuttingItem'
      # CuttingItem also carries a CutterStatus (same pattern as above).
      base['CutterStatus'] ||= cutter_status_schema
    when 'CuttingItems'
      # The CuttingItems AssociationClass wraps an array of CuttingItem objects.
      # The CuttingItem property is not represented as a direct relation on the
      # AssociationClass itself, so it must be injected explicitly.
      base['CuttingItem'] ||= { 'type'  => 'array',
                                 'items' => { '$ref' => "#{JsonSchemaModel.ref_prefix}CuttingItem" } }
    when 'MTConnectError'
      # The SysML model has no hasError array relation on MTConnectError; the
      # Errors container (keyed by error subtype name) must be injected here.
      base['Errors'] ||= build_wrapper_schema('Errors', {})
    end
    base
  end

  # Inline schema for the CutterStatus wrapper object used on
  # CuttingToolLifeCycle and CuttingItem.  CutterStatus is a named
  # uml:Association (not a class), so it has no $defs entry; instead each
  # occurrence is inlined with a reference to the Status class.
  def cutter_status_schema
    {
      'type'       => 'object',
      'properties' => { 'Status' => { 'type'  => 'array',
                                       'items' => { '$ref' => "#{JsonSchemaModel.ref_prefix}Status" } } },
      'additionalProperties' => false
    }
  end

  # ---------- Scalar schema builders -----------------------------------

  # Schema for a scalar Association property (the "has*" ones we keep).
  def build_scalar_schema(tgt)
    if (prim = WIRE_FORMAT_PRIMITIVES[tgt.name])
      prim.dup
    elsif tgt.enumeration?
      { '$ref' => "#{JsonSchemaModel.ref_prefix}#{tgt.name}" }
    elsif primitive?(tgt)
      PRIMITIVES.fetch(tgt.name, { 'type' => 'string' }).dup
    else
      { '$ref' => "#{JsonSchemaModel.ref_prefix}#{tgt.name}" }
    end
  end

  # Schema for a scalar Attribute property (same logic as build_scalar_schema).
  def build_attr_schema(_rel, tgt)
    build_scalar_schema(tgt)
  end

  # Schema ref for array item types.
  def ref_for(tgt)
    if (prim = WIRE_FORMAT_PRIMITIVES[tgt.name])
      prim.dup
    elsif primitive?(tgt)
      PRIMITIVES.fetch(tgt.name, { 'type' => 'string' }).dup
    else
      { '$ref' => "#{JsonSchemaModel.ref_prefix}#{tgt.name}" }
    end
  end

  # ---------- Enumeration ----------------------------------------------

  def enumeration_schema
    values = literals.map { |l| l.name }.compact.uniq
    doc    = plain_documentation
    base   = { 'type' => 'string' }
    base['description'] = doc if doc
    if values.empty?
      # Abstract / empty enumeration — accept any string.
      base['title'] = @name
      return base
    end
    # Allow both the defined enum values and vendor-extension values (x:NAME).
    {
      'title'  => @name,
      'oneOf'  => [
        base.merge('enum' => values),
        { 'type' => 'string', 'pattern' => '^[a-ln-zA-LN-Z]:[A-Z_][A-Z0-9_]*$' }
      ]
    }
  end

  # ---------- DataType / PrimitiveType ---------------------------------

  def datatype_schema
    if (prim = WIRE_FORMAT_PRIMITIVES[@name])
      s = prim.merge('title' => @name)
      s['description'] = plain_documentation if plain_documentation
      return s
    end
    if PRIMITIVES.key?(@name)
      s = PRIMITIVES[@name].merge('title' => @name)
      s['description'] = plain_documentation if plain_documentation
      s
    else
      s = { 'type' => 'string', 'title' => @name }
      s['description'] = plain_documentation if plain_documentation
      s
    end
  end

  # ---------- helpers --------------------------------------------------

  def primitive?(t)
    t.type == 'uml:PrimitiveType' || t.type == 'uml:DataType' ||
      PRIMITIVES.key?(t.name)
  end

  def plain_documentation
    d = @documentation
    return nil unless d
    text = d.respond_to?(:definition) ? d.definition : d.to_s
    return nil if text.nil? || text.empty?
    text.gsub(/\s+/, ' ').strip
  rescue
    nil
  end

  def rel_doc(r)
    d = r.documentation rescue nil
    return nil unless d
    text = d.respond_to?(:definition) ? d.definition : d.to_s
    return nil if text.nil? || text.empty?
    text.gsub(/\s+/, ' ').strip
  rescue
    nil
  end

  def has_rel_default?(r)
    r.respond_to?(:default) && r.default && !r.default.to_s.strip.empty?
  end

  # True when this type is a Sample subtype whose units default ends in "3D"
  # (e.g. MILLIMETER_3D, DEGREE_3D).  These types report their value as a
  # [x, y, z] numeric array rather than a scalar number.
  def is_3d_sample?
    return false unless is_a_type?('Sample')
    @relations.each do |r|
      next unless r.is_a?(Relation::Attribute) && r.name.to_s == 'units'
      default = r.respond_to?(:default) && r.default
      return true if default && default.to_s =~ /3D$/
    end
    false
  end

end
