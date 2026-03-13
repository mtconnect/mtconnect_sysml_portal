require 'diagram'

class GhPagesDiagram < Diagram
  include GhPagesHelpers

  def initialize(model, e)
    super

    @page_path = File.join(model.page_dir, "#{slug}.md")
    @expanded_page_path = File.join(File.dirname(model.expanded_page_path), "#{slug}.md")

    dir = File.join($model_dir, 'diagrams')
    parent = model.name.gsub(/\s+/, '_')
    diagram_name = name.gsub(/\s+/, '_')
    file, = Dir["#{dir}/*__#{parent}__#{diagram_name}.svg"]
    if file
      $logger.debug "Found #{file} for *__#{parent}__#{diagram_name}.svg"
      @image_path = "diagrams/#{File.basename(file)}"
    end
  end

  def slug
    @name.gsub(/[^a-z0-9]+/i, '') + "Diagram"
  end

  def generate_page(nav_order, parent_title, grand_parent = nil)
    return unless @image_path

    $logger.info "  Generating diagram page: #{@expanded_page_path}"
    File.open(@expanded_page_path, 'w') do |f|
      f.puts "---"
      f.puts "title: #{@name} Diagram"
      f.puts "parent: #{parent_title}"
      f.puts "grand_parent: #{quote_yaml(grand_parent)}" if grand_parent
      f.puts "nav_order: #{nav_order}"
      f.puts "layout: default"
      f.puts "---"
      f.puts "\n# #{@name} Diagram\n"
      f.puts "![#{@name}]({% link #{@image_path} %})"
    end
  end
end
