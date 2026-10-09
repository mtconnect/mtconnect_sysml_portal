require 'csv'
require 'type'
require 'owl/helpers'

# Root SysML classes whose subclasses are classifiers rather than descriptive information
OWL_CLASSIFIER_ROOTS = {
  'DataItem' => 'mtc-cnstr:DataItemType'
}

# Classes placed directly in a specific IOF branch, replacing their SysML superclasses.
# TODO: The ontology is a monohierarchy, so SampleObservation no longer inherits from Observation
# and loses the Observation properties (timestamp, sequence, dataItemId, ...). This needs to be resolved.
OWL_IOF_SUPERCLASSES = {
  'Observation' => 'iof-cnstr:ValueExpression',
  'SampleObservation' => 'iof-cnstr:MeasuredValueExpression'
}

# Component to component relations are mereological and use the BFO parthood relations
# ('has continuant part at all times' and 'continuant part of at all times') instead of minting new properties
OWL_HAS_PART = 'bfo:BFO_0000110'
OWL_PART_OF = 'bfo:BFO_0000177'

# Component to component relations that are not parthood. A nil value keeps the minted property.
OWL_COMPONENT_RELATIONS = {
  'isExecutedOn' => 'bfo:BFO_0000167', # the process has the device as a participant at all times
  'isWorkedOn' => nil, # TODO: the part participates in the process the device is executing
  # TODO: a process is information about a process specification in the asset model, not a part of the device.
  # It needs a relation stating it is information about the device's process.
  'hasProcess' => nil,
  'isProcessOf' => nil
}

# Packages whose root classes are design specifications
OWL_DESIGN_SPECIFICATION_PACKAGES = Set['Configurations']

# Best IOF parents suggested by classifier/iof_classifier.py. The information view gives the superclass of
# MTConnect root classes, and the realist view gives what the class is about (iof:isAbout).
OWL_IOF_PARENTS_FILE = File.join(File.dirname(__FILE__), 'classifier', 'out', 'iof_parents.csv')

OWL_IRI_PREFIXES = {
  'iof' => 'https://spec.industrialontologies.org/ontology/construct/',
  'obo' => 'http://purl.obolibrary.org/obo/',
  'cmns' => 'https://www.omg.org/spec/Commons/'
}

# Classes from imported ontologies that duplicate an IOF class
OWL_IRI_ALIASES = {
  'http://purl.obolibrary.org/obo/IAO_0000030' => 'https://spec.industrialontologies.org/ontology/construct/InformationContentEntity'
}

OWL_BFO_ENTITY = 'http://purl.obolibrary.org/obo/BFO_0000001'
OWL_IS_ABOUT = 'iof-cnstr:isAbout'

class OwlType < Type
  include OwlHelpers

  @@owl_names = nil
  @@iof_parents = nil

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

  # Unique local names for all classes. SysML names are reused across packages, so colliding
  # names are suffixed with the parent class name, or the package name if there is no parent.
  def self.owl_names
    @@owl_names ||= begin
      classes = @@types_by_id.values.select { |t| OwlType === t && t.owl_class? }
      clean = ->(name) { name.gsub(/[^a-zA-Z0-9]/, '') }
      names = classes.to_h { |t| [t, clean.(t.name)] }

      [->(t) { t.owl_parents.first&.name || t.model.name }, ->(t) { t.model.name }].each do |suffix|
        dups = names.values.tally.select { |_, n| n > 1 }.keys
        names = names.to_h { |t, n| [t, dups.include?(n) ? n + clean.(suffix.(t)) : n] }
      end

      names.values.tally.each do |n, count|
        $logger.warn "OWL class name #{n} is defined #{count} times" if count > 1
      end

      names
    end
  end

  # The classifier's best IOF parent IRI for each view, keyed by OWL class name
  def self.iof_parents
    @@iof_parents ||= begin
      parents = Hash.new { |h, k| h[k] = {} }
      if File.exist?(OWL_IOF_PARENTS_FILE)
        CSV.foreach(OWL_IOF_PARENTS_FILE, headers: true) do |row|
          iri = row['iof_parent_iri'] || expand_curie(row['iof_parent'])
          parents[row['view']][row['mtconnect_class']] = OWL_IRI_ALIASES.fetch(iri, iri)
        end
        $logger.info "Loaded IOF parents for #{parents.values.sum(&:size)} classes from #{OWL_IOF_PARENTS_FILE}"
      else
        $logger.warn "No IOF parents file #{OWL_IOF_PARENTS_FILE}, run classifier/iof_classifier.py"
      end
      parents
    end
  end

  def self.expand_curie(curie)
    prefix, local = curie.split(':', 2)
    OWL_IRI_PREFIXES.include?(prefix) ? OWL_IRI_PREFIXES[prefix] + local : curie
  end

  def iof_parent(view)
    OwlType.iof_parents[view][owl_name]
  end

  def owl_class?
    (@type == 'uml:Class' or @type == 'uml:AssociationClass') and
      not (@name.nil? or @name.empty?) and @model.root.name != 'Glossary'
  end

  def owl_name
    OwlType.owl_names.fetch(self) { turtle_name(@name) }
  end

  def owl_parents
    get_parents.select { |parent| parent.model.root.name != 'Glossary' }
  end

  def component?
    @name == 'Component' && owl_parents.empty? || owl_parents.any?(&:component?)
  end

  def write_turtle(f)
    return if @name.nil? || @name.empty?

    case @type
    when 'uml:Class', 'uml:AssociationClass'
      write_class(f, owl_name)
    when 'uml:Enumeration'
      #write_enumeration(f, local)
    when 'uml:DataType', 'uml:PrimitiveType'
      #write_datatype(f, local)
    end
  end

  private

  def in_package?(names)
    m = @model
    while m
      return true if names.include?(m.name)
      m = m.parent
    end
    false
  end

  # The MTConnect information is placed in the information content entity branch of IOF:
  # data item types are classifiers, observations are value expressions (samples are measured
  # value expressions), configuration is a design specification, and everything else, including
  # component types, is descriptive.
  def owl_superclasses
    @owl_superclasses ||= compute_owl_superclasses
  end

  def compute_owl_superclasses
    parents = owl_parents
    if OWL_IOF_SUPERCLASSES.include?(owl_name)
      [OWL_IOF_SUPERCLASSES[owl_name]]
    elsif parents.empty?
      if in_package?(OWL_DESIGN_SPECIFICATION_PACKAGES)
        ['iof-cnstr:DesignSpecification']
      elsif (iri = iof_parent('information'))
        ["<#{iri}>"]
      else
        ['iof-cnstr:DescriptiveInformationContentEntity']
      end
    else
      parents.map do |parent|
        if parent.owl_parents.empty? and OWL_CLASSIFIER_ROOTS.include?(parent.name)
          OWL_CLASSIFIER_ROOTS[parent.name]
        else
          "mtc-cnstr:#{parent.owl_name}"
        end
      end.uniq
    end
  end

  # The MTConnect parent this class is a subclass of in the generated ontology
  def owl_mtc_parent
    owl_parents.find { |parent| owl_superclasses.include?("mtc-cnstr:#{parent.owl_name}") }
  end

  # The ontology is a monohierarchy, so only root classes take the classifier's information parent. Other classes
  # keep their MTConnect parent and record a different IOF match as a candidate for review.
  def iof_parent_candidate
    candidate = iof_parent('information')
    return nil if candidate.nil? or owl_superclasses.include?("<#{candidate}>")
    parent = owl_mtc_parent
    candidate unless parent and parent.iof_parent('information') == candidate
  end

  # What the class is about from the realist view, unless inherited from the MTConnect parent
  def iof_about
    about = iof_parent('realist')
    return nil if about.nil? or about == OWL_BFO_ENTITY
    parent = owl_mtc_parent
    about unless parent and parent.iof_parent('realist') == about
  end

  def write_class(f, local)
    $logger.debug "Writing class #{local}"

    f.puts "mtc-cnstr:#{local}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"

    owl_superclasses.each do |parent|
      f.puts "    rdfs:subClassOf #{parent} ;"
    end

    doc = plain_documentation
    f.puts "    skos:definition #{turtle_string(doc)} ;" if doc && !doc.empty?

    candidate = iof_parent_candidate
    f.puts "    mtc-cnstr:iofParentCandidate <#{candidate}> ;" if candidate

    if (about = iof_about)
      f.puts <<TTL
    rdfs:subClassOf [ a owl:Restriction ;
                      owl:onProperty #{OWL_IS_ABOUT} ;
                      owl:someValuesFrom <#{about}> ] ;
TTL
    end

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
      next if rel_name.start_with?('bfo:') # BFO relations are imported

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

  # The types of the classes an association class connects
  def association_participants
    @association_participants ||= @xmi.xpath('./memberEnd').map do |m|
      @xmi.document.at("//*[@xmi:id='#{m['xmi:idref']}']")&.[]('type')
    end.compact.to_set
  end

  # An association class repeats its member ends as an ownedEnd and as private attributes typed by
  # the participants (e.g. Axes::device and Axes::axis). These duplicate the relation between the
  # participants (Device::hasAxis and Axis::isAxisOf) and are not properties of the association class.
  def association_participant?(rel)
    @type == 'uml:AssociationClass' and rel.owner.equal?(self) and
      (rel.xmi.name == 'ownedEnd' or
       (rel.xmi['association'].nil? and association_participants.include?(rel.xmi['type'])))
  end

  def owl_properties
    @relations.select do |rel|
      not (@name.nil? or @name.empty?) and rel.target and
        (rel.is_a?(Relation::Attribute) or rel.is_a?(Relation::Association)) and
        not association_participant?(rel)
    end.map do |rel|
      # Relations through an association class target the association class; use the participant
      end_ = rel.is_a?(Relation::Association) ? rel.final_target : rel.target
      target = LazyPointer === end_.type ? end_.type.resolve && end_.type.obj : end_.type
      if target
        case target.type
        when 'uml:Class', 'uml:AssociationClass'
          type_name = "mtc-cnstr:#{target.owl_name}"
          is_object = true
        when 'uml:Enumeration'
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
        # The target is in a model that is not generated
        $logger.warn "#{@name}::#{rel.name}: No target, skipping"
        next
      end
      rel_name = if component? && OwlType === target && target.component? &&
                    (bfo = OWL_COMPONENT_RELATIONS.fetch(rel.name) { rel.name =~ /^is/ ? OWL_PART_OF : OWL_HAS_PART })
                   bfo
                 else
                   "mtc-cnstr:#{turtle_name(rel.name =~ /^observes.+/ ? "observes" : rel.name)}"
                 end
      [rel, rel_name, type_name, is_object, target]
    end.compact.uniq { |_, rel_name, type_name| [rel_name, type_name] }
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
