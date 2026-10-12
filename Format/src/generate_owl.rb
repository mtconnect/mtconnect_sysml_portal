$: << File.dirname(__FILE__)

require 'fileutils'
require 'json'
require 'owl/owl_model'
require 'owl/helpers'

class OwlGenerator

  def initialize(xmi)
    @xmi = xmi
    @skip_models = Set["CSV Imports",
                       "Simulation",
                       "MTConnect",
                       "Development Process",
                       "Imports",
                       "Supporting Documents",
                       "MTConnect Device Validation Suite",
                       "Fundamentals",
                       "Reference Agent Architecture",
                       "WIP: Device Examples",
                       "WIP: Use Cases",
                       "Asset Information Model",
                       "Interface Interaction Model"
    ]
  end

  def self.model_class
    OwlModel
  end

  def generate
    dir = File.expand_path(File.join('..', '..', 'owl'), File.dirname(__FILE__))
    FileUtils.mkdir_p(dir)

    core = File.join(File.dirname(__FILE__), 'owl', 'MTConnectCore.ttl')
    File.read(core).gsub(/\$mtconnect_version/, $mtconnect_version).tap do |content|
      output_file = File.join(dir, 'MTConnectCore.ttl')
      File.write(output_file, content)
      $logger.info "Generated core ontology to #{output_file}"
    end

    $logger.info "Generating OWL Turtle ontology in #{dir}"

    OwlModel.generator_class = self
    OwlModel.skip_models = @skip_models
    OwlModel.output_dir = dir

    Stereotype.collect_stereotypes(@xmi)

    @top = OwlModel.new(nil, @xmi)
    @top.find_data_types
    @top.find_definitions

    models = OwlModel.models.each_value.select(&:generate_ontology)
    domains = models.map(&:domain).sort
    generate_about(dir, domains)
    generate_catalog(dir, ['MTConnectCore', *domains, 'AboutMTConnect'])
    generate_classifier_input(models)
  end

  # The SysML classes, superclasses, and definitions for classifier/iof_classifier.py
  def generate_classifier_input(models)
    output_file = File.join(File.dirname(__FILE__), 'owl', 'classifier', 'out', 'mtconnect_classes.json')
    FileUtils.mkdir_p(File.dirname(output_file))
    classes = models.flat_map(&:owl_classes).map(&:classifier_record).sort_by { |c| c['name'] }
    File.write(output_file, JSON.pretty_generate({ 'version' => $mtconnect_version, 'classes' => classes }))
    $logger.info "Generated #{output_file} with #{classes.size} classes"
  end

  def generate_about(dir, domains)
    output_file = File.join(dir, 'AboutMTConnect.ttl')
    imports = domains.map { |d| "    owl:imports <#{$mtc_base_iri}#{d}/> ;" }.join("\n")

    File.write(output_file, <<~TTL)
      @prefix owl:  <http://www.w3.org/2002/07/owl#> .
      @prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

      <#{$mtc_base_iri}AboutMTConnect/>
          a owl:Ontology ;
          rdfs:label "about mtconnect" ;
      #{imports}
          owl:versionIRI <https://model.mtconnect.org/ontology/v#{$mtconnect_version}/machinetool/AboutMTConnect/> ;
          owl:versionInfo "#{$mtconnect_version}" .
    TTL

    $logger.info "Generated #{output_file} importing #{domains.size} ontologies"
  end

  def generate_catalog(dir, domains)
    output_file = File.join(dir, 'catalog-v001.xml')
    entries = domains.flat_map do |d|
      ["#{$mtc_base_iri}#{d}/",
       "https://model.mtconnect.org/ontology/v#{$mtconnect_version}/machinetool/#{d}/"].map do |iri|
        %(    <uri id="#{d}" name="#{iri}" uri="#{d}.ttl"/>)
      end
    end.join("\n")

    File.write(output_file, <<~XML)
      <?xml version="1.0" encoding="UTF-8" standalone="no"?>
      <catalog prefer="public" xmlns="urn:oasis:names:tc:entity:xmlns:xml:catalog">
      #{entries}
      </catalog>
    XML

    $logger.info "Generated #{output_file} with #{domains.size} ontologies"
  end

end
