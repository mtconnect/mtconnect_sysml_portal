require 'type'
require 'owl/helpers'

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

    local = turtle_name(@name)

    case @type
    when 'uml:Class', 'uml:AssociationClass'
      write_class(f, local)
    when 'uml:Enumeration'
      #write_enumeration(f, local)
    when 'uml:DataType', 'uml:PrimitiveType'
      #write_datatype(f, local)
    end
  end

  private

  def write_class(f, local)
    f.puts "mtc:#{local}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"

    # Parent classes (rdfs:subClassOf)
    get_parents.each do |parent|
      if parent.model.root.name != 'Glossary'
        f.puts "    rdfs:subClassOf mtc:#{turtle_name(parent.name)} ;"
      end
    end

    doc = plain_documentation
    f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?

    # Object/data properties from relations
    props = owl_properties
    if props.any?
      props.each do |prop|
        f.puts "    #{prop} ;"
      end
    end

    f.puts "    rdfs:isDefinedBy mtc: ."
    f.puts

    # Write properties as separate triples
    # write_property_declarations(f, local)
  end

  def write_enumeration(f, local)
    f.puts "mtc:#{local}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"
    doc = plain_documentation
    f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?

    if @literals.any?
      literal_uris = @literals.values.map { |lit| "mtc:#{turtle_name(@name)}_#{turtle_name(lit.name)}" }
      f.puts "    owl:oneOf ( #{literal_uris.join(' ')} ) ;"
    end

    f.puts "    rdfs:isDefinedBy mtc: ."
    f.puts

    # Write each literal as a named individual
    @literals.each_value do |lit|
      lit_local = "#{local}_#{turtle_name(lit.name)}"
      f.puts "mtc:#{lit_local}"
      f.puts "    a owl:NamedIndividual, mtc:#{local} ;"
      f.puts "    rdfs:label #{turtle_string(lit.name)} ;"
      desc = lit.description
      f.puts "    skos:definition #{turtle_string(desc)} ;" if desc && !desc.empty?
      f.puts "    rdfs:isDefinedBy mtc: ."
      f.puts
    end
  end

  def write_datatype(f, local)
    f.puts "mtc:#{local}"
    f.puts "    a rdfs:Datatype ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"
    doc = plain_documentation
    f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?
    f.puts "    rdfs:isDefinedBy mtc: ."
    f.puts
  end

  def write_property_declarations(f, local)
    @relations.each do |rel|
      next unless rel.is_a?(Relation::Attribute) || rel.is_a?(Relation::Association)
      next if rel.name.nil? || rel.name.empty?

      prop_local = "#{local}_#{turtle_name(rel.name)}"
      is_object = rel.is_a?(Relation::Association)

      f.puts "mtc:#{prop_local}"
      f.puts "    a #{is_object ? 'owl:ObjectProperty' : 'owl:DatatypeProperty'} ;"
      f.puts "    rdfs:label #{turtle_string(rel.name)} ;"
      f.puts "    rdfs:domain mtc:#{local} ;"

      if rel.target && rel.target.resolved? && rel.target.type
        range_name = turtle_name(rel.target.type.name)
        if is_object
          f.puts "    rdfs:range mtc:#{range_name} ;"
        else
          f.puts "    rdfs:range xsd:string ;"
        end
      end

      doc = rel.documentation
      f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?
    rescue => e
      $logger.warn "Skipping property #{rel.name}: #{e.message}"
    ensure
      f.puts "    rdfs:isDefinedBy mtc: ."
      f.puts
    end
  end

  def owl_properties
    []  # inline property refs — declarations handled separately
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
