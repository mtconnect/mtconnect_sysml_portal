$: << File.dirname(__FILE__)

require 'fileutils'
require 'json'
require 'json_schema/json_schema_model'

# Generates JSON Schema for the MTConnect v2 JSON wire format from the
# SysML/XMI model, in every configured draft. Mirrors generate_schema.rb's
# behaviour of emitting both XSD 1.0 and 1.1 from a single run.
#
# To add a new draft (e.g. Draft 7, Draft 2019-09): append one entry to
# DRAFTS. Each entry tells the generator which keywords to use; the type
# emitter consults `use_unevaluated` to decide between flattening parents
# (older drafts) and emitting `allOf` + `unevaluatedProperties` (newer).
class JsonSchemaGenerator

  # Convention follows the XSD generator: the *newer* dialect carries no
  # filename suffix and is treated as the canonical artifact, the older
  # dialect gets a suffix. RapidJSON's runtime validator reads draft-04.
  DRAFTS = [
    {
      id:              :draft_04,
      suffix:          '_draft-04',
      label:           'Draft 4',
      schema_uri:      'http://json-schema.org/draft-04/schema#',
      defs_key:        'definitions',
      id_key:          'id',           # Draft 4 used "id"; "$id" arrived in Draft 6
      use_unevaluated: false           # → flatten ancestors into each $defs entry
    },
    {
      id:              :draft_2020_12,
      suffix:          '',             # default / no suffix
      label:           'Draft 2020-12',
      schema_uri:      'https://json-schema.org/draft/2020-12/schema',
      defs_key:        '$defs',
      id_key:          '$id',
      use_unevaluated: true            # → keep allOf, use unevaluatedProperties: false
    }
  ].freeze

  SKIP_MODELS = Set[
    "CSV Imports", "Simulation", "MTConnect", "Development Process",
    "Imports", "Supporting Documents", "MTConnect Device Validation Suite",
    "Reference Agent Architecture", "WIP: Device Examples", "WIP: Use Cases"
  ]

  ROOT_DOCUMENTS = [
    { envelope: 'MTConnectDevices', root: 'MTConnectDevices', 
      packages:  ["Device Information Model", "Interface Interaction Model", "Profile", "Representations", "MTConnectDevices Response Document"],
      skip: ['DataItem Types for Interface', 'Operation and Error Recovery'] },
    { envelope: 'MTConnectStreams', root: 'MTConnectStreams', 
      packages: ["Observation Information Model", "DataItem Types for Interface", "Profile", "Fundamentals"] },
    { envelope: 'MTConnectAssets',  root: 'MTConnectAssets', packages: ["Asset Information Model", "Profile", "Fundamentals"] },
    { envelope: 'MTConnectError',   root: 'MTConnectError', packages: ["Fundamentals", "Profile"] }
  ]

  def initialize(xmi)
    @xmi = xmi
    @skip_models = SKIP_MODELS
    @drafts = filter_drafts(Options[:json_draft])
  end

  def self.model_class
    JsonSchemaModel
  end

  def generate
    dir = File.expand_path(File.join('..', '..', 'json_schema'), File.dirname(__FILE__))
    FileUtils.mkdir_p(dir)
    $logger.info "Generating JSON Schema (v2 wire format) in #{dir}"
    $logger.info "  Drafts: #{@drafts.map { |d| d[:label] }.join(', ')}"

    JsonSchemaModel.generator_class = self
    JsonSchemaModel.skip_models     = @skip_models
    JsonSchemaModel.output_dir      = dir

    Stereotype.collect_stereotypes(@xmi)

    @top = JsonSchemaModel.new(nil, @xmi)
    JsonSchemaModel.root_xmi = @xmi
    @top.find_data_types
    @top.find_definitions

    # Outer loop over drafts (mirrors generate_schema.rb's %w{1.0 1.1}.each).
    # The model is parsed once; each pass re-emits per the active draft's
    # keyword conventions.
    @drafts.each do |spec|
      JsonSchemaModel.draft_spec = spec
      $logger.info "Emitting #{spec[:label]}"
      JsonSchemaModel.generate_documents(ROOT_DOCUMENTS)
    end
  end

  private

  # Optional filter for development. With no flag, every draft is emitted.
  def filter_drafts(requested)
    return DRAFTS if requested.nil?
    requested = requested.to_sym
    found = DRAFTS.select { |d| d[:id] == requested }
    raise "Unknown JSON Schema draft: #{requested}. Known: #{DRAFTS.map { |d| d[:id] }}" if found.empty?
    found
  end
end