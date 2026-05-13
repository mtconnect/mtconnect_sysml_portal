require 'type'
require 'owl/helpers'

MTCONNECT_CLASS_NAME_MAP = {
  'Axis' => 'MotionSystem',
  'Rotary' => 'RotaryMotionSystem',
  'Linear' => 'LinearMotionSystem'
}

class OwlType < Type
  include OwlHelpers

  def initialize(model, e)
    super

    lits = literals
    unless lits.empty?
      definitions = Hash.new
      lits.sort_by { |lit| lit.name }.each do |lit|
        definitions[lit.name] = lit.description.definition
      end

      OwlHelpers::Definitions.add(@name, definitions)
    end
  end


  def write_turtle(f)
    return if @name.nil? || @name.empty?

    local = turtle_name(MTCONNECT_CLASS_NAME_MAP.fetch(@name, @name))

    case @type
    when 'uml:Class', 'uml:AssociationClass'
      write_class(f, local)
      write_type(f, local)
    when 'uml:Enumeration'
      #write_enumeration(f, local)
    when 'uml:DataType', 'uml:PrimitiveType'
      #write_datatype(f, local)
    end
  end

  private

  def write_type(f, local)
    # Categorize using the MTConnect component structure. Not all components are types, some are physcal things
    # or systems and some are types. 
    return if @leaf
  end

  def write_class(f, local)
    $logger.debug "Writing class #{local}"

    # Create the physcal class definition
    f.puts "mtc-cnstr:#{local}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"

    # Determine the parent based on the Kind of thing it represents
    parent_names = get_parents.map(&:name).select do |parent_name|
      parent_name != 'Glossary' && parent_name != 'MTConnect'
    end

    if @leaf
      owl_parent = "iof-cnstr:MaterialArtifact"
    elsif parent_names.include?('System')
      owl_parent = 'iof-cnstr:MaterialComponent'
    elsif parent_names.include?('Axis')
      owl_parent = 'mtc-cnstr:MotionSystem'
    elsif @name =~ /Process/
      owl_parent = 'iof-cnstr:ManufacturingProcess'
    end

    # Parent classes (rdfs:subClassOf)
    get_parents.each do |parent|
      if parent.model.root.name != 'Glossary'
        f.puts "    rdfs:subClassOf mtc-cnstr:#{turtle_name(parent.name)} ;"
      end
    end

    doc = plain_documentation
    f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?

    # Object/data properties from relations
    props = owl_properties
    if props.any?
      props.each do |prop, rel_name, type_name, is_object, target|
        f.puts <<TTL
    rdfs:subClassOf [ a owl:Restriction ;
                      owl:onProperty #{rel_name} ;
                      owl:someValuesFrom #{type_name} ] ;
TTL
      end
    end

    f.puts "    rdfs:isDefinedBy #{model.iri} ."
    f.puts

    # Write properties as separate triples
    write_property_declarations(f, local)
  end

  def write_enumeration(f, local)
    f.puts "mtc-cnstr:#{local}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"
    doc = plain_documentation
    f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?

    if @literals.any?
      literal_uris = @literals.values.map { |lit| "mtc-cnstr:#{turtle_name(@name)}_#{turtle_name(lit.name)}" }
      f.puts "    owl:oneOf ( #{literal_uris.join(' ')} ) ;"
    end

    f.puts "    rdfs:isDefinedBy #{model.iri} ."
    f.puts

    # Write each literal as a named individual
    @literals.each_value do |lit|
      lit_local = "#{local}_#{turtle_name(lit.name)}"
      f.puts "mtc-cnstr:#{lit_local}"
      f.puts "    a owl:NamedIndividual, mtc-cnstr:#{local} ;"
      f.puts "    rdfs:label #{turtle_string(lit.name)} ;"
      desc = lit.description
      f.puts "    skos:definition #{turtle_string(desc)} ;" if desc && !desc.empty?
      f.puts "    rdfs:isDefinedBy #{model.iri} ."
      f.puts
    end
  end

  def write_datatype(f, local)
    f.puts "mtc-cnstr:#{local}"
    f.puts "    a rdfs:Datatype ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"
    doc = plain_documentation
    f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?
    f.puts "    rdfs:isDefinedBy #{model.iri} ."
    f.puts
  end

  def write_property_declarations(f, local)
    owl_properties.each do |rel, rel_name, type_name, is_object, target|
      next if rel.name =~ /^observes.+/ # Skip "observes" properties since they are not explicitly defined in the model

      $logger.debug "-- Writing property #{rel_name} for #{local} (object property: #{is_object} - #{type_name})"

      f.puts <<~TTL
      #{rel_name}
          a #{is_object ? 'owl:ObjectProperty' : 'owl:DatatypeProperty'} ;
          rdfs:label #{turtle_string(rel_name)} ;
          rdfs:domain mtc-cnstr:#{local} ;
          rdfs:range #{type_name} ;
      TTL

      doc = rel.documentation
      f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?
      f.puts "    rdfs:isDefinedBy #{model.iri} ."
      f.puts
    rescue => e
      $logger.warn "Skipping property #{rel.name}: #{e.message}"
    ensure
    end
  end

  def owl_properties
    @relations.select do |rel|
      not (@name.nil? or @name.empty?) and rel.target and
        (rel.is_a?(Relation::Attribute) or rel.is_a?(Relation::Association))
    end.map do |rel|
      target = LazyPointer === rel.target.type ? rel.target.type.resolve && rel.target.type.obj : rel.target.type
      if target
        case target.type
        when 'uml:Class', 'uml:Enumeration'
          type_name = "mtc-cnstr:#{turtle_name(target.name)}"
          is_object = true
        when 'uml:DataType', 'uml:PrimitiveType'
          type_name = "xsd:#{target.name}"
          is_object = false
        else
          $logger.warn "#{@name}::#{rel.name}: Unrecognized target type #{target.type}"
          type_name = "xsd:string"
          is_object = false
        end
      else
        $logger.warn "#{@name}::#{rel.name}: No target"
        type_name = 'xsd:string'
        is_object = false
      end
      rel_name = "mtc-cnstr:#{turtle_name(rel.name =~ /^observes.+/ ? "observes" : rel.name)}"
      [rel, rel_name, type_name, is_object, target]
    end
  end

  def plain_documentation
    definition = @documentation.definition
    convert_markdown(definition) if definition && !definition.empty?
  rescue
    nil
  end

  def turtle_name(name)
    name.to_s.gsub(/[^a-zA-Z0-9]/, '')
  end

  def turtle_string(str)
    escaped = str.to_s.gsub('\\', '\\\\\\\\').gsub('"', '\\"').gsub("\n", '\\n')
    "\"\"\"#{escaped}\"\"\""
  end

end
