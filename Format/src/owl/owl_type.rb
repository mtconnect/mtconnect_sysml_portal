require 'csv'
require 'json'
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
  'isExecutedOn' => 'bfo:BFO_0000057', # the process has the device as a participant (realist side only)
  'isWorkedOn' => nil, # TODO: the part participates in the process the device is executing
  # TODO: a process is information about a process specification in the asset model, not a part of the device.
  # It needs a relation stating it is information about the device's process.
  'hasProcess' => nil,
  'isProcessOf' => nil
}

# Subclasses of these MTConnect classes are defined classes: equivalent to their MTConnect parent intersected with
# the enumeration values they fix (type value SampleEnum TEMPERATURE), what they are about, and their data
# requirements. Their primary (asserted) parent can then be their IOF classification, and the reasoner infers the
# MTConnect parent back. The data requirements are only stated in the equivalence. Components have no fixed values;
# what they are about (isAbout some <their realist class>) tells them apart, so the information side can be placed
# where it makes sense in the IOF information taxonomy while the aboutness says what it really is.
OWL_EQUIVALENCE_ROOTS = Set['SampleObservation', 'EventObservation', 'ConditionObservation', 'Component']

# MTConnect roots whose classes are cited by the category below the root, e.g. 'MTConnect Sample Temperature'
OWL_SOURCE_CATEGORY_ROOTS = Set['Observation']

# Packages whose root classes are design specifications
OWL_DESIGN_SPECIFICATION_PACKAGES = Set['Configurations']

# Best IOF parents suggested by classifier/iof_classifier.py. The information view gives the superclass of
# MTConnect root classes, and the realist view gives what the class is about (iof:isAbout).
OWL_IOF_PARENTS_FILE = File.join(File.dirname(__FILE__), 'classifier', 'out', 'iof_parents.csv')

OWL_IRI_PREFIXES = {
  'iof' => 'https://spec.industrialontologies.org/ontology/construct/',
  'iof-cnstr' => 'https://spec.industrialontologies.org/ontology/construct/',
  'obo' => 'http://purl.obolibrary.org/obo/',
  'cmns' => 'https://www.omg.org/spec/Commons/'
}

# Classes from imported ontologies that duplicate an IOF class
OWL_IRI_ALIASES = {
  'http://purl.obolibrary.org/obo/IAO_0000030' => 'https://spec.industrialontologies.org/ontology/construct/InformationContentEntity'
}

OWL_BFO_ENTITY = 'http://purl.obolibrary.org/obo/BFO_0000001'
OWL_INFORMATION_ROOT = '<https://spec.industrialontologies.org/ontology/construct/InformationContentEntity>'

# Realist classes: the real-world things described by the component tree, written next to the information classes.
# They are named from classifier/view_names.json, or the information class name with a suffix.
OWL_VIEW_NAMES_FILE = File.join(File.dirname(__FILE__), 'classifier', 'view_names.json')
OWL_REALIST_SUFFIX = 'Entity'

# Realist classes are also written for the qualities and characteristics the samples measure
OWL_REALIST_SAMPLE_ROOTS = Set['SampleObservation']

# Realist sample classes are named by the kind of their IOF match (TemperatureQuality, PathFeedrateCharacteristic)
OWL_REALIST_KIND_SUFFIXES = [
  ['http://purl.obolibrary.org/obo/BFO_0000019', 'Quality'],
  ['https://spec.industrialontologies.org/ontology/construct/ProcessParameter', 'Characteristic'],
  ['https://spec.industrialontologies.org/ontology/construct/PerformanceIndicator', 'Characteristic'],
  ['http://purl.obolibrary.org/obo/BFO_0000144', 'Characteristic'] # process profile
]

# A realist class is equivalent to its IOF match when the classifier judges them the same kind of entity
OWL_REALIST_EQUIVALENCE_THRESHOLD = 0.8

# The realist side uses the 'at some time' relations where the information model uses 'at all times'
OWL_REALIST_RELATIONS = {
  'bfo:BFO_0000110' => 'bfo:BFO_0000178', # has continuant part at some time
  'bfo:BFO_0000177' => 'bfo:BFO_0000176', # continuant part of at some time
  'bfo:BFO_0000057' => 'bfo:BFO_0000057'  # has participant at some time
}

# Relations that only hold between real entities. Participation needs a process (an occurrent), and the information
# classes are information content entities, so these are only written on the realist classes; the information class
# is about its realist class.
OWL_REALIST_ONLY_RELATIONS = Set['bfo:BFO_0000057']
OWL_IS_ABOUT = 'iof-cnstr:isAbout'

# The xsd datatypes in the OWL 2 datatype map, which DL reasoners support
OWL2_DATATYPES = Set[
  'decimal', 'integer', 'nonNegativeInteger', 'nonPositiveInteger', 'positiveInteger', 'negativeInteger', 'long',
  'int', 'short', 'byte', 'unsignedLong', 'unsignedInt', 'unsignedShort', 'unsignedByte', 'double', 'float',
  'string', 'normalizedString', 'token', 'language', 'Name', 'NCName', 'NMTOKEN', 'boolean', 'hexBinary',
  'base64Binary', 'anyURI', 'dateTime', 'dateTimeStamp'
]

class OwlType < Type
  include OwlHelpers

  @@owl_names = nil
  @@iof_parents = nil
  @@iof_equivalence = nil
  @@iof_paths = nil
  @@view_names = nil

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
          probability = row['equivalent_probability']
          (@@iof_equivalence ||= Hash.new { |h, k| h[k] = {} })[row['view']][row['mtconnect_class']] =
            probability.to_f unless probability.nil? or probability.empty?
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

  # The classifier's best path from the root to the IOF parent, per view
  def self.iof_paths
    @@iof_paths ||= begin
      paths = Hash.new { |h, k| h[k] = {} }
      file = OWL_IOF_PARENTS_FILE.sub(/\.csv$/, '.json')
      if File.exist?(file)
        JSON.parse(File.read(file)).each do |detail|
          paths[detail['view']][detail['mtconnect_class']] = detail['beam'].first['path'].map do |c|
            iri = expand_curie(c)
            OWL_IRI_ALIASES.fetch(iri, iri)
          end
        end
      end
      paths
    end
  end

  def iof_path(view)
    OwlType.iof_paths[view][owl_name] || []
  end

  def self.view_names
    @@view_names ||= File.exist?(OWL_VIEW_NAMES_FILE) ? JSON.parse(File.read(OWL_VIEW_NAMES_FILE)) : {}
  end

  def realist?
    owl_class? and (component? or sample?)
  end

  def mtc_ancestors
    @mtc_ancestors ||= begin
      ancestors, queue = [], owl_parents.dup
      while (parent = queue.shift)
        next if ancestors.include?(parent)
        ancestors << parent
        queue.concat(parent.owl_parents)
      end
      ancestors
    end
  end

  # A sample type, whose realist class is the quality or characteristic it measures
  def sample?
    mtc_ancestors.any? { |a| OWL_REALIST_SAMPLE_ROOTS.include?(a.owl_name) }
  end

  def realist_kind_suffix
    path = iof_path('realist')
    OWL_REALIST_KIND_SUFFIXES.find { |iri, _| path.include?(iri) }&.last || OWL_REALIST_SUFFIX
  end

  # The IOF class this realist class is equivalent to, when the classifier judged them the same kind of entity
  def realist_equivalent
    OwlType.iof_parents # loads the equivalence probabilities
    probability = @@iof_equivalence&.dig('realist', owl_name)
    iof_parent('realist') if probability and probability >= OWL_REALIST_EQUIVALENCE_THRESHOLD
  end

  # The MTConnect citation for iof-av:directSource: 'MTConnect <type> <name>', where the type is the MTConnect root
  # of the class's SysML hierarchy (or the category below it, see OWL_SOURCE_CATEGORY_ROOTS)
  def mtconnect_source
    chain = [self]
    while (parent = chain.last.owl_parents.first) and !chain.include?(parent)
      chain << parent
    end
    type = chain.last
    type = chain[-2] if OWL_SOURCE_CATEGORY_ROOTS.include?(type.name) and chain.size > 1
    type.equal?(self) ? "MTConnect #{@name}" : "MTConnect #{type.name} #{@name}"
  end

  def realist_name
    OwlType.view_names.dig('realist', owl_name, 'name') ||
      "#{owl_name}#{component? ? OWL_REALIST_SUFFIX : realist_kind_suffix}"
  end

  def realist_label
    OwlType.view_names.dig('realist', owl_name, 'label') || label(realist_name)
  end

  def realist_mtc_parent
    owl_parents.find(&:realist?)
  end

  # Subsumption-aware monohierarchy: keep the MTConnect parent's realist class only when the parent's IOF match is at
  # least as specific as this class's (this class's match is at or above it), so nothing is lost. When this class's
  # match is more specific, or in a different branch, the classification wins and the class is placed directly under
  # its own IOF match; e.g. motion system goes under equipment module rather than component entity (independent
  # continuant), and linear motion system (engineered system) stays under motion system.
  def realist_superclass
    @realist_superclass ||= begin
      parent, iof = realist_mtc_parent, iof_parent('realist')
      parent_iof = parent&.iof_parent('realist')
      if parent and (iof.nil? or parent_iof.nil? or iof == parent_iof or parent.iof_path('realist').include?(iof))
        "mtc-cnstr:#{parent.realist_name}"
      elsif iof
        "<#{iof}>"
      else
        'bfo:BFO_0000004' # independent continuant
      end
    end
  end

  # An IOF match that adds to what the realist superclass already implies, for review. A match at or above the
  # parent's match is already inherited.
  def realist_candidate
    iof = iof_parent('realist')
    return nil if iof.nil? or realist_superclass == "<#{iof}>" or realist_equivalent
    iof unless realist_mtc_parent&.iof_path('realist')&.include?(iof)
  end

  @@property_declarations = nil

  # Each property is declared once, for all the classes that use it. Its domain is the most specific class that every
  # class using it is (entailed to be) a subclass of, and its range likewise for its targets. A property with no
  # common class has no domain or range; repeated rdfs:domain axioms would mean the intersection of the classes.
  def self.prepare_properties(types)
    by_name = OwlType.owl_names.invert
    uses = Hash.new { |h, k| h[k] = [] }
    types.each do |type|
      type.property_uses.each do |rel, name, type_name, is_object, target|
        next if rel.name =~ /^observes.+/ or name.start_with?('bfo:') # observes is not modeled; BFO is imported
        uses[name] << [type, rel, type_name, is_object]
      end
    end

    chain = lambda do |ref|
      type = ref.start_with?('mtc-cnstr:') && by_name[ref.delete_prefix('mtc-cnstr:')]
      type ? [ref, *type.entailed_ancestors] : [ref]
    end
    common = lambda do |refs|
      chains = refs.uniq.map(&chain)
      chains.first.find { |a| chains.all? { |c| c.include?(a) } }
    end

    @@property_declarations = Hash.new { |h, k| h[k] = [] }
    uses.sort.each do |name, list|
      kinds = list.map { |_, _, _, is_object| is_object }.tally
      is_object = (kinds[true] || 0) >= (kinds[false] || 0)
      if kinds.size > 1
        $logger.warn "Property #{name} is used as both an object and a datatype property; declaring it as " \
                     "#{is_object ? 'an object' : 'a datatype'} property"
      end
      domain = common.(list.map { |type, _| "mtc-cnstr:#{type.owl_name}" })
      ranges = list.map { |_, _, type_name| type_name }.uniq
      range = ranges.size == 1 ? ranges.first : common.(ranges)
      range ||= 'rdfs:Literal' unless is_object
      doc = list.map { |_, rel| rel.documentation }.find { |d| d and !d.empty? }
      home = (domain&.start_with?('mtc-cnstr:') && by_name[domain.delete_prefix('mtc-cnstr:')]) ||
             list.map(&:first).min_by(&:owl_name)
      @@property_declarations[home.model] << { name: name, object: is_object, domain: domain, range: range,
                                                 documentation: doc }
    end
    $logger.info "Prepared #{uses.size} property declarations"
  end

  def self.property_declarations_for(model)
    @@property_declarations ? @@property_declarations[model] : []
  end

  def property_uses
    owl_properties
  end

  # Property names follow the IOF convention: object properties are verb phrases ('hasResult', 'observes') and
  # datatype properties are 'has ... value' ('hasResultValue'). This keeps object and datatype uses of the same SysML
  # attribute apart, and properties apart from classes.
  def self.property_local(name, is_object)
    base = name.to_s =~ /^observes.+/ ? 'observes' : name.to_s.gsub(/[^a-zA-Z0-9]/, '')
    stem = base =~ /\A(has|is|observes|made)([A-Z]|\z)/ ? base : "has#{base[0].upcase}#{base[1..]}"
    return stem if is_object
    stem.end_with?('Value') ? "#{stem}Literal" : "#{stem}Value"
  end

  # The superclasses this class is entailed to be under, nearest first, as written in Turtle: asserted superclasses,
  # the genus of its equivalence, and the IOF classes above a classifier match
  def entailed_ancestors
    @entailed_ancestors ||= begin
      by_name = OwlType.owl_names.invert
      out, queue = [], [self]
      while (type = queue.shift)
        supers = type.owl_superclasses.map { |s| s.start_with?('iof-cnstr:') ? "<#{OwlType.expand_curie(s)}>" : s }
        supers.unshift("mtc-cnstr:#{type.equivalence_genus.owl_name}") if type.defined_by_equivalence?
        supers.each do |sup|
          next if out.include?(sup)
          out << sup
          if (parent = sup.start_with?('mtc-cnstr:') && by_name[sup.delete_prefix('mtc-cnstr:')])
            queue << parent
          elsif (iri = sup[/\A<(.*)>\z/, 1]) and iri == type.iof_parent('information')
            type.iof_path('information').reverse.drop(1).each { |a| out << "<#{a}>" unless out.include?("<#{a}>") }
          end
        end
      end
      # Every information class is an information content entity, also through explicitly placed IOF classes whose
      # ancestors the generator does not know
      out << OWL_INFORMATION_ROOT unless out.include?(OWL_INFORMATION_ROOT)
      out
    end
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

  # The class as the IOF classifier sees it: the SysML generalizations from the XMI, not the generated superclasses
  def classifier_record
    { 'name' => owl_name, 'sysml_name' => @name, 'label' => label, 'definition' => plain_documentation || '',
      'package' => model.domain, 'abstract' => abstract? ? true : false, 'parents' => owl_parents.map(&:owl_name) }
  end

  def component?
    @name == 'Component' && owl_parents.empty? || owl_parents.any?(&:component?)
  end

  def write_turtle(f)
    return if @name.nil? || @name.empty?

    case @type
    when 'uml:Class', 'uml:AssociationClass'
      write_class(f, owl_name)
      write_realist_class(f) if realist?
    when 'uml:Enumeration'
      write_enumeration(f, turtle_name(@name))
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

  # The superclass and classification methods are used across classes (parents, property domains)
  public

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
        elsif iof_consistent_with?(parent) or !defined_by_equivalence?
          "mtc-cnstr:#{parent.owl_name}"
        else
          "<#{iof_parent('information')}>"
        end
      end.uniq
    end
  end

  # The MTConnect parent that is the genus of this class's equivalence, when it is under an OWL_EQUIVALENCE_ROOTS class
  def equivalence_genus
    return @equivalence_genus if defined?(@equivalence_genus)
    ancestors, queue = [], owl_parents.dup
    while (parent = queue.shift)
      next if ancestors.include?(parent)
      ancestors << parent
      queue.concat(parent.owl_parents)
    end
    @equivalence_genus = ancestors.any? { |a| OWL_EQUIVALENCE_ROOTS.include?(a.owl_name) } ? owl_parents.first : nil
  end

  # The enumeration values this class fixes, from its own attributes with an enumeration default, as
  # [property, individual] pairs, e.g. ['mtc-cnstr:hasType', 'mtc-cnstr:SampleEnum_TEMPERATURE']
  def value_restrictions
    @value_restrictions ||= @relations.filter_map do |rel|
      next unless rel.is_a?(Relation::Attribute) and rel.owner.equal?(self) and rel.default
      enum = LazyPointer === rel.target.type ? rel.target.type.resolve && rel.target.type.obj : rel.target.type
      next unless enum and enum.type == 'uml:Enumeration'
      value = rel.default
      value = value.resolve && value.obj&.name if LazyPointer === value
      next unless value and enum.literal(value)
      ["mtc-cnstr:#{OwlType.property_local(rel.name, true)}", "mtc-cnstr:#{turtle_name(enum.name)}_#{turtle_name(value)}"]
    end
  end

  # Only a class with something that tells it apart from its siblings can be defined: a fixed value, or its own realist
  # class to be about. Without one, every sibling with the same data requirements would be inferred equivalent.
  def defined_by_equivalence?
    !equivalence_genus.nil? and (value_restrictions.any? or realist?)
  end

  # The IOF class this class is placed under, or the classifier's match, for checking its subclasses
  def iof_information
    if OWL_IOF_SUPERCLASSES.include?(owl_name)
      OwlType.expand_curie(OWL_IOF_SUPERCLASSES[owl_name])
    elsif owl_parents.empty? and in_package?(OWL_DESIGN_SPECIFICATION_PACKAGES)
      OwlType.expand_curie('iof-cnstr:DesignSpecification')
    else
      iof_parent('information')
    end
  end

  # Subsumption-aware monohierarchy: a class stays under its MTConnect parent only when the parent's IOF match is at
  # least as specific as its own (its match is at or above the parent's), so nothing is lost. When its match is more
  # specific, or in a different branch, the classification wins and the class is placed directly under its own IOF
  # match. Only classes defined by equivalence move; the reasoner infers their MTConnect parent back.
  def iof_consistent_with?(parent)
    own, theirs = iof_parent('information'), parent.iof_information
    # A parent placed explicitly (OWL_IOF_SUPERCLASSES or a package rule) is not on its classifier path
    parent_path = theirs == parent.iof_parent('information') ? parent.iof_path('information') : [theirs]
    own.nil? or theirs.nil? or own == theirs or parent_path.include?(own)
  end

  # The MTConnect parent this class is a subclass of in the generated ontology
  def owl_mtc_parent
    owl_parents.find { |parent| owl_superclasses.include?("mtc-cnstr:#{parent.owl_name}") }
  end

  # A class kept under its MTConnect parent records a more specific IOF match as a candidate for review. A match at or
  # above the parent's is already inherited.
  def iof_parent_candidate
    candidate = iof_parent('information')
    return nil if candidate.nil? or owl_superclasses.include?("<#{candidate}>")
    parent = owl_mtc_parent
    return candidate unless parent
    parent_path = parent.iof_information == parent.iof_parent('information') ? parent.iof_path('information') : []
    candidate unless parent.iof_information == candidate or parent_path.include?(candidate)
  end

  # What the class is about from the realist view, unless inherited from the MTConnect parent
  def iof_about
    about = iof_parent('realist')
    return nil if about.nil? or about == OWL_BFO_ENTITY
    parent = owl_mtc_parent
    about unless parent and parent.iof_parent('realist') == about
  end

  private

  def write_class(f, local)
    $logger.debug "Writing class #{local}"

    f.puts "mtc-cnstr:#{local}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"
    f.puts "    skos:altLabel #{turtle_string(@name)} ;" # the MTConnect term
    f.puts "    iof-av:directSource #{turtle_string(mtconnect_source)} ;"

    owl_superclasses.each do |parent|
      f.puts "    rdfs:subClassOf #{parent} ;"
    end

    doc = plain_documentation
    f.puts "    iof-av:naturalLanguageDefinition #{turtle_string(doc)} ;" if doc && !doc.empty?

    candidate = iof_parent_candidate
    f.puts "    mtc-cnstr:iofParentCandidate <#{candidate}> ;" if candidate

    about = realist? ? "mtc-cnstr:#{realist_name}" : (iri = iof_about) && "<#{iri}>"
    props = owl_properties

    if defined_by_equivalence?
      write_equivalence(f, about, props)
    else
      if about
        f.puts <<TTL
    rdfs:subClassOf [ a owl:Restriction ;
                      owl:onProperty #{OWL_IS_ABOUT} ;
                      owl:someValuesFrom #{about} ] ;
TTL
      end

      # Object/data properties from relations
      props.each do |prop, rel_name, type_name, is_object, target|
        next if OWL_REALIST_ONLY_RELATIONS.include?(rel_name)
        f.puts <<TTL
    rdfs:subClassOf [ a owl:Restriction ;
                      owl:onProperty #{rel_name} ;
                      owl:someValuesFrom #{type_name} ] ;
TTL
      end
    end

    f.puts "    rdfs:isDefinedBy #{model.iri} ."
    f.puts
  end

  # The class as its MTConnect parent intersected with its values, what it is about, and its data requirements
  def write_equivalence(f, about, props)
    fixed = value_restrictions.map(&:first)
    members = ["mtc-cnstr:#{equivalence_genus.owl_name}"]
    members += value_restrictions.map do |prop, value|
      "[ a owl:Restriction ; owl:onProperty #{prop} ; owl:hasValue #{value} ]"
    end
    members << "[ a owl:Restriction ; owl:onProperty #{OWL_IS_ABOUT} ; owl:someValuesFrom #{about} ]" if about
    props.each do |prop, rel_name, type_name, is_object, target|
      next if fixed.include?(rel_name) # 'type some SampleEnum' is implied by 'type value SampleEnum_...'
      next if OWL_REALIST_ONLY_RELATIONS.include?(rel_name)
      members << "[ a owl:Restriction ; owl:onProperty #{rel_name} ; owl:someValuesFrom #{type_name} ]"
    end

    f.puts "    owl:equivalentClass [ a owl:Class ;"
    f.puts "        owl:intersectionOf ("
    members.each { |m| f.puts "            #{m}" }
    f.puts "        ) ] ;"
  end

  # The real-world counterpart of a component tree class, which the information class is about
  def write_realist_class(f)
    $logger.debug "Writing realist class #{realist_name}"

    f.puts "mtc-cnstr:#{realist_name}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(realist_label)} ;"
    f.puts "    iof-av:directSource #{turtle_string(mtconnect_source)} ;"
    equivalent = realist_equivalent
    f.puts "    owl:equivalentClass <#{equivalent}> ;" if equivalent
    f.puts "    rdfs:subClassOf #{realist_superclass} ;" unless realist_superclass == "<#{equivalent}>"

    doc = plain_documentation
    parent = realist_mtc_parent
    if doc && parent && OwlType.view_names.dig('realist', owl_name) && doc.start_with?("#{parent.label} ")
      doc = parent.realist_label + doc[parent.label.length..] # 'axis that ...' becomes 'motion system that ...'
    end
    f.puts "    iof-av:naturalLanguageDefinition #{turtle_string(doc)} ;" if doc && !doc.empty?

    candidate = realist_candidate
    f.puts "    mtc-cnstr:iofParentCandidate <#{candidate}> ;" if candidate

    owl_properties.each do |rel, rel_name, type_name, is_object, target|
      realist_rel = OWL_REALIST_RELATIONS[rel_name]
      next unless realist_rel and target.realist?

      f.puts <<TTL
    rdfs:subClassOf [ a owl:Restriction ;
                      owl:onProperty #{realist_rel} ;
                      owl:someValuesFrom mtc-cnstr:#{target.realist_name} ] ;
TTL
    end

    f.puts "    rdfs:isDefinedBy #{model.iri} ."
    f.puts
  end

  def write_enumeration(f, local)
    f.puts "mtc-cnstr:#{local}"
    f.puts "    a owl:Class ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"
    doc = plain_documentation
    f.puts "    iof-av:naturalLanguageDefinition #{turtle_string(doc)} ;" if doc && !doc.empty?

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
      desc = literal_definition(lit)
      f.puts "    iof-av:naturalLanguageDefinition #{turtle_string(desc)} ;" if desc && !desc.empty?
      f.puts "    rdfs:isDefinedBy #{model.iri} ."
      f.puts
    end
  end

  def literal_definition(lit)
    definition = lit.description.respond_to?(:definition) ? lit.description.definition : lit.description.to_s
    convert_markdown(definition) if definition && !definition.empty?
  rescue
    nil
  end

  def write_datatype(f, local)
    f.puts "mtc-cnstr:#{local}"
    f.puts "    a rdfs:Datatype ;"
    f.puts "    rdfs:label #{turtle_string(label)} ;"
    doc = plain_documentation
    f.puts "    iof-av:naturalLanguageDefinition #{turtle_string(doc)} ;" if doc && !doc.empty?
    f.puts "    rdfs:isDefinedBy #{model.iri} ."
    f.puts
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
          # SysML primitives outside the OWL 2 datatype map (ID, UUID, datetime, float3d, ...) are strings
          type_name = OWL2_DATATYPES.include?(target.name) ? "xsd:#{target.name}" : 'xsd:string'
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
                   "mtc-cnstr:#{OwlType.property_local(rel.name, is_object)}"
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
