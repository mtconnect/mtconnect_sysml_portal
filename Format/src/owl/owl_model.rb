require 'model'
require 'owl/owl_type'
require 'owl/helpers'

class OwlModel < Model

  @@output_dir = nil
  @@generator  = nil

  def self.output_dir=(dir)
    @@output_dir = dir
  end

  def self.output_dir
    @@output_dir
  end

  def self.generator_class=(g)
    @@generator = g
  end

  def self.type_class
    OwlType
  end

  def self.diagram_class
    # No diagram output for OWL
    Diagram
  end

  def self.generate_ontology
    $logger.info "Generating OWL Turtle ontology"

    output_file = File.join(@@output_dir, "mtconnect_v#{$mtconnect_version}.ttl")

    File.open(output_file, 'w') do |f|
      write_prefixes(f)
      write_ontology_header(f)

      @@models.each_value do |model|
        next if model.name.nil? or model.name == 'MTConnect' or model.name == 'Glossary'
        # model.write_turtle(f)
        model.types.each do |type| 
          type.write_turtle(f) 
        end
      end
    end

    $logger.info "Written #{output_file}"
  end

  def self.write_prefixes(f)
    base_uri = "https://model.mtconnect.org/ontology/v#{$mtconnect_version}/"
    f.puts <<~TTL
      @prefix owl:  <http://www.w3.org/2002/07/owl#> .
      @prefix rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
      @prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
      @prefix xsd:  <http://www.w3.org/2001/XMLSchema#> .
      @prefix skos: <http://www.w3.org/2004/02/skos/core#> .
      @prefix mtc:  <#{base_uri}> .

    TTL
  end

  def self.write_ontology_header(f)
    f.puts <<~TTL
      <https://model.mtconnect.org/ontology/v#{$mtconnect_version}/>
          a owl:Ontology ;
          rdfs:label "MTConnect Ontology v#{$mtconnect_version}" ;
          owl:versionInfo "#{$mtconnect_version}" .

    TTL
  end

  def write_turtle(f)
    return if @name.nil?
    local = turtle_name(@name)
    f.puts "mtc:#{local}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(@name)} ;"
    doc = plain_documentation
    f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?
    f.puts "    rdfs:isDefinedBy mtc: ."
    f.puts
  end

  def plain_documentation
    return nil if @documentation.nil? || @documentation.respond_to?(:sections) == false
    sections = @documentation.sections
    return nil if sections.empty?
    sections.first.text.gsub(/<[^>]+>/, '').strip
  rescue
    nil
  end

  def turtle_name(name)
    name.gsub(/[^a-zA-Z0-9_]/, '_')
  end

  def turtle_string(str)
    escaped = str.to_s.gsub('\\', '\\\\\\\\').gsub('"', '\\"').gsub("\n", '\\n')
    "\"\"\"#{escaped}\"\"\""
  end

end
