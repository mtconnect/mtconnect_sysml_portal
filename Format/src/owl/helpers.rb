require 'active_support/inflector'
require 'uri'
require 'cgi'

module OwlHelpers
  module Definitions
    @definitions = {}
    def self.add(context, definitions)
      @definitions[context] = definitions
    end

    def self.[](context)
      @definitions[context]
    end

    def self.dig(*terms)
      @definitions.dig(*terms)
    end
  end

  def convert_macro(value)
    if value =~ /([a-zA-Z0-9_]+)(\(([^\)]+)\))?/
      command = $1
      args = $3.gsub(/\\([<>])/, '\1') if $3
      
      #puts "Macro: #{command} (#{args} #{expand})"

      case command         
      when 'term'
        format_term(args, false)
        
      when 'termplural'
        format_term(args, true)

      when 'operation'
        args.to_s

      when 'block'
        format_block(args)

      when 'property'
        format_property(args)

      when 'package'
        format_package(args)

      when 'def'
        text = OwlHelpers::Definitions.dig(*args.split('::')) || "`#{args}`"
        convert_markdown(text)

      when 'latex'
        args

      when 'table'
        # puts "Table Reference #{args} = #{num}"
        "*Table #{args}*"

      when 'figure'
        # puts "Image Reference #{args} = #{num}"            
        "*Figure #{args}*"

      when "span", "colspan"
        ''

      when "rowspan"
        ''

      when "sect"
        "*Section #{args}*"

      when "input"
        ''

      when 'cite', 'citetitle'
        if args =~ /MTCPart([0-9])/
          target = case $1
                    when '1'
                      'Protocols'
                      
                    when '2'
                      'Device Information Model'

                    when '3'
                      'Observation Information Model'

                    when '4'
                      'Asset Information Model'

                    when '5'
                      'Interface Interaction Model'

                    else
                      "MTConnect Part #{$1}"
                    end

          format_package(target)
        else
          "<em>#{args}</em>"
        end
        
      when 'markdown'
        args

      when 'url'
        if cp = args.index(':')
          ref = args
          text = args[(cp + 1)..]
        else
          ref = "https://#{args}"
          text = args
        end
        "ref"
        
      else
        args
        
      end
    else
      ''
    end
  end

  def convert_markdown(content)
    content.gsub(/\{\{(.+?)\}\}/) do |m|
      convert_macro(m)
    end.gsub(%r{\((figures/[^.]+\.(?:png|jpg|jpeg|svg))}) do |m|
      link = URI.decode_uri_component($1)
      if File.exist?(File.join($model_dir, link))
        ""
      else
        $logger.warn "Cannot find linked file #{link}, skipping"
        ""
      end
    end.gsub(/\{: width="([0-9.]+)"\}/) do |m|
      #"{: width=\"#{$1.to_f * 100}%\"}"
      ''
    end
  end

  def table_cell_markdown(content)
    content = convert_markdown(content)
    content.split(/\r?\n/).map { |l| l.strip }.join("<br/>")
  end

  def prior_version(version)
    if version > '2.0'
      maj, min = version.split('.').map { |s| s.to_i }
      "#{maj}.#{min - 1}"
    else
      nil
    end
  end
      
  def find_block(name)
    # Handle part property chains    
    if name.include?('::')
      package, name = name.split('::')
      model = OwlModel.model_for_name(package)  
      block =  model.types.find { |t| t.name == name } if model
    else
      block = OwlType.type_for_name(name)
    end

    return block
  end

  def format_target(ref = nil, validate = false, text = nil)    
    unless text
      display = label
      display << "::#{ref}" if ref
    else
      display = text
    end
    display
  end

  def format_block(block)
    if LazyPointer === block
      block.resolve
      block = block.obj
    end
    
    if Type === block
      b = block
    else
      name = block.respond_to?(:name) ? block.name : block
      b = find_block(name)
    end
    if b
      b.format_target(nil, false, nil)
    else
      block
    end                    
  end

  def format_property(property)
    # TODO: Handle property chains like `Device::data_items::name`
    f1, f2, f3, = property.split('::')
    b  = nil
    if f3
      bn = "#{f1}::#{f2}"
      b, prop = find_block(bn), f3
    elsif f2
      bn = f1
      b, prop = find_block(bn), f2
    else
      prop = f1
    end

    if b
      b.format_target(prop, false, nil)
    else
      "#{bn}::#{property}"
    end
  end

  def format_package(package)
    if b = OwlModel.model_for_name(package)
      b.format_target(nil, false, nil)
    else
      package
    end                    
  end
  
  def format_term(term, plural = false)
    plural ? ActiveSupport::Inflector.pluralize(term) : term
  end

  def label(name = @name)
    name.gsub(/([A-Z]+)([A-Z][a-z])/, '\1 \2').
         gsub(/([a-z])([A-Z])/, '\1 \2').
         gsub(/\./, ' ').downcase
  end
end
