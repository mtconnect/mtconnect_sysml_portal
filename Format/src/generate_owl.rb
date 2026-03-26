$: << File.dirname(__FILE__)

require 'fileutils'
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

    $logger.info "Generating OWL Turtle ontology in #{dir}"

    OwlModel.generator_class = self
    OwlModel.skip_models = @skip_models
    OwlModel.output_dir = dir

    Stereotype.collect_stereotypes(@xmi)

    @top = OwlModel.new(nil, @xmi)
    @top.find_data_types
    @top.find_definitions

    OwlModel.generate_ontology
  end

end
