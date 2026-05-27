$: << File.dirname(__FILE__)

require 'json'

class ValidationModel < Model
  def self.generator_class=(generator_class)
    @@generator = generator_class
  end

  def generator
    @@generator
  end

  def self.type_class
    ValidationType
  end
  def self.diagram_class
    ValidationDiagram
  end
end

class ValidationType < Type
  
end

class ValidationDiagram < Diagram
end
