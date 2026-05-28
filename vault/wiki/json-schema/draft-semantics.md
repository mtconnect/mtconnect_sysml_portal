---
title: JSON Schema Draft Semantics
summary: How the Draft-04 and Draft 2020-12 outputs differ. Same model, two emission strategies.
tags: [json-schema, architecture-decision, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Draft Semantics

The SysML model is class-based with single inheritance. JSON Schema can express this in two ways, and the two drafts the portal targets force a different choice:

## Draft 2020-12 — `allOf` + `unevaluatedProperties: false`

For a class `B` that extends `A`, the emitted schema for `B` is:

```json
{
  "$defs": {
    "A": { "type": "object", "properties": { "a1": { … } }, "required": ["a1"] },
    "B": {
      "allOf": [{ "$ref": "#/$defs/A" }],
      "type": "object",
      "properties": { "b1": { … } },
      "required": ["b1"],
      "unevaluatedProperties": false
    }
  }
}
```

`unevaluatedProperties: false` means "no properties beyond those declared **here or in any branch of `allOf`**". This is the keyword that makes inheritance work cleanly — without it, the child schema cannot reject unknown properties without also rejecting the inherited ones.

`unevaluatedProperties` arrived in Draft 2019-09. Draft-04 cannot express it.

## Draft-04 — flattened ancestors

The same inheritance is emitted with the parent's properties **inlined** into the child:

```json
{
  "definitions": {
    "A": {
      "id": "#/definitions/A",
      "type": "object",
      "properties": { "a1": { … } },
      "required": ["a1"]
    },
    "B": {
      "id": "#/definitions/B",
      "type": "object",
      "properties": { "a1": { … }, "b1": { … } },
      "required": ["a1", "b1"],
      "additionalProperties": false
    }
  }
}
```

Trade-offs:

- The Draft-04 file is larger — each subclass restates its ancestor properties.
- `id` is used instead of `$id` (Draft 6 renamed the keyword).
- `additionalProperties: false` is closer-fitting than the Draft 2020-12 `unevaluatedProperties: false` and is correct because all inherited properties are physically present in the definition.

## Branching point in code

The two strategies are selected by the `use_unevaluated` flag on each entry of `JsonSchemaGenerator::DRAFTS`:

```ruby
DRAFTS = [
  { id: :draft_04,      … use_unevaluated: false },  # flatten ancestors
  { id: :draft_2020_12, … use_unevaluated: true   }  # allOf + unevaluatedProperties
]
```

The emitter (`json_schema_type.rb`) reads `JsonSchemaModel.draft_spec[:use_unevaluated]` when it walks each type's parent chain.

## Why both, why now

The C++ MTConnect Agent embeds RapidJSON as its JSON validator. RapidJSON supports Draft-04 only. Until that toolchain catches up (and until consumers can be encouraged to migrate), the portal emits both. Retiring Draft-04 is one of the open questions tracked in [`portal/in-progress/open-questions.md`](../portal/in-progress/open-questions.md).
