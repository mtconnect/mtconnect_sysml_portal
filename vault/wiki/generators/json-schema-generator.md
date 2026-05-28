---
title: JSON Schema Generator
summary: Emits the MTConnect v2 JSON wire-format schemas in Draft-04 and Draft 2020-12 for all four response document envelopes.
tags: [generators, json-schema, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# JSON Schema Generator

`JsonSchemaGenerator` (`Format/src/generate_json_schema.rb`, implementation under `Format/src/json_schema/`) emits JSON Schema for the MTConnect v2 JSON wire format. It parses the XMI model once and runs an emission pass for each configured draft.

The schemas it emits are documented under [`../json-schema/`](../json-schema/). This page documents the **generator implementation**.

## Drafts table

```ruby
DRAFTS = [
  { id: :draft_04,
    suffix: '_draft-04',
    label: 'Draft 4',
    schema_uri: 'http://json-schema.org/draft-04/schema#',
    defs_key: 'definitions',
    id_key:   'id',
    use_unevaluated: false   # flatten ancestors into each $defs entry
  },
  { id: :draft_2020_12,
    suffix: '',
    label: 'Draft 2020-12',
    schema_uri: 'https://json-schema.org/draft/2020-12/schema',
    defs_key: '$defs',
    id_key:   '$id',
    use_unevaluated: true    # emit allOf + unevaluatedProperties: false
  }
].freeze
```

To add a new draft (e.g. Draft 7 or Draft 2019-09), append an entry. The emitter consults `defs_key`, `id_key`, `schema_uri`, and `use_unevaluated` — that is the complete dependency surface.

## Root documents

```ruby
ROOT_DOCUMENTS = [
  { envelope: 'MTConnectDevices', root: 'MTConnectDevices',
    packages: ["Device Information Model", "Interface Interaction Model",
               "Profile", "Representations", "MTConnectDevices Response Document"],
    skip:     ['DataItem Types for Interface', 'Operation and Error Recovery'] },
  { envelope: 'MTConnectStreams', root: 'MTConnectStreams',
    packages: ["Observation Information Model", "DataItem Types for Interface",
               "Profile", "Fundamentals"] },
  { envelope: 'MTConnectAssets',  root: 'MTConnectAssets',
    packages: ["Asset Information Model", "Profile", "Fundamentals"] },
  { envelope: 'MTConnectError',   root: 'MTConnectError',
    packages: ["Fundamentals", "Profile"] }
]
```

Each entry yields one schema file per draft per version.

## Skip list

```ruby
SKIP_MODELS = Set[
  "CSV Imports", "Simulation", "MTConnect", "Development Process",
  "Imports", "Supporting Documents", "MTConnect Device Validation Suite",
  "Reference Agent Architecture", "WIP: Device Examples", "WIP: Use Cases"
]
```

Note this is slightly broader than the GH Pages skip list — `Reference Agent Architecture`, `WIP: Device Examples`, and `WIP: Use Cases` are excluded here.

## Generation flow

```
JsonSchemaGenerator#generate
  ├─ Stereotype.collect_stereotypes(xmi)
  ├─ JsonSchemaModel#find_data_types          ← one-time model walk
  ├─ JsonSchemaModel#find_definitions
  └─ for each draft in @drafts:
       ├─ JsonSchemaModel.draft_spec = spec
       └─ JsonSchemaModel.generate_documents(ROOT_DOCUMENTS)
```

The model is parsed once; each pass re-emits per the active draft's keywords. The outer loop structure mirrors the XSD generator (`generate_schema.rb` iterates over `%w{1.0 1.1}`).

## Filtering drafts at runtime

The `--json-draft DRAFT` flag on `generate.rb` filters the emission set. Useful during development to halve the iteration time. With no flag, every entry in `DRAFTS` is emitted.

## Files

| File | Role |
|---|---|
| `json_schema_model.rb` | Top-level model walker; finds definitions and data types; emits document envelopes |
| `json_schema_type.rb` | Per-type emitter; reads `draft_spec[:use_unevaluated]` to choose between flattening and `unevaluatedProperties` |

## Related

- [JSON Schema overview](../json-schema/overview.md)
- [Draft semantics](../json-schema/draft-semantics.md)
- [Response documents](../json-schema/response-documents.md)
