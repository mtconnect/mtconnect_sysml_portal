require 'model'
require 'owl/owl_type'
require 'owl/helpers'

$mtc_base_iri = "https://model.mtconnect.org/ontology/machinetool/"
$mtc_cnstr = "https://model.mtconnect.org/ontology/construct/"
$mtc_indv = "https://model.mtconnect.org/ontology/individual/"


class OwlModel < Model
  include OwlHelpers

  attr_reader :iri, :domain

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

  def initialize(parent, e)
    super    
    @domain = turtle_name(@name)
    @iri = "<#{$mtc_base_iri}#{@domain}/>"
  end

  def generate_ontology
    return if @name.nil? or @name.empty? or @name == 'MTConnect' or @name == 'Glossary' or @types.empty? or
      root.name == 'Glossary'

    output_file = File.join(@@output_dir, "#{@domain}.ttl")
    $logger.info "Generating OWL Turtle ontology for model #{@name} to #{output_file}"

    File.open(output_file, 'w') do |f|
      write_prefixes(f)
      write_ontology_header(f)

      @types.each do |type| 
        type.write_turtle(f) 
      end
    end

    $logger.info "Written #{output_file}"
  end

  def write_prefixes(f)
    f.puts <<~TTL
      @prefix owl:  <http://www.w3.org/2002/07/owl#> .
      @prefix rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
      @prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
      @prefix xsd:  <http://www.w3.org/2001/XMLSchema#> .
      @prefix skos: <http://www.w3.org/2004/02/skos/core#> .
      @prefix iof-cnstr: <https://spec.industrialontologies.org/ontology/construct/> .
      @prefix iof-ind: <https://spec.industrialontologies.org/ontology/individual/> .
      @prefix iof-av: <https://spec.industrialontologies.org/ontology/annotation/> .
      @prefix mtc-cnstr:  <#{$mtc_cnstr}> .
      @prefix mtc-indv:  <#{$mtc_indv}> .

    TTL
  end

  def write_ontology_header(f)
    f.puts <<~TTL
      #{@iri}
          a owl:Ontology ;
          rdfs:label "#{label}" ;
          owl:imports <https://model.mtconnect.org/ontology/machinetool/MTConnectCore/> ;
          owl:versionIRI <https://model.mtconnect.org/ontology/v#{$mtconnect_version}/machinetool/#{@domain}/> ;
          owl:versionInfo "#{$mtconnect_version}" .
      
    TTL
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
    name.gsub(/[^a-zA-Z0-9_]/, '')
  end

  def turtle_string(str)
    escaped = str.to_s.gsub('\\', '\\\\\\\\').gsub('"', '\\"').gsub("\n", '\\n')
    "\"\"\"#{escaped}\"\"\""
  end

end
