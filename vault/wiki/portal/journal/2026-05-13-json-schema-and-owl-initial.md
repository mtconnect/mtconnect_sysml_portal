---
title: "2026-05-13 Initial JSON Schema and OWL Cuts"
summary: First end-to-end JSON Schema and OWL emission from the SysML model, with checkpoints landing through the following days.
tags: [portal, json-schema, owl, generators, implementation, resolved]
source: manual
created: 2026-05-13
updated: 2026-05-27
---

# 2026-05-13 — Initial JSON Schema and OWL Cuts

## What happened

- First JSON Schema and OWL generation lands (`29b0714` "Added initial cuts of json_schema and owl generation").
- Two checkpoints follow within 48 hours: `d4d711d` "Checkpoint for json schema", `e4f0811` "Fixed devices json schema".

## Decisions made

- **Two JSON Schema drafts emitted in parallel.** `JsonSchemaGenerator::DRAFTS` declares `draft_04` (RapidJSON-compatible) and `draft_2020_12` (canonical). Both are emitted in the same run. See [JSON Schema generator](../../generators/json-schema-generator.md).
- **Draft 2020-12 is the canonical artifact.** Its file gets no suffix; Draft-04 carries the `_draft-04` suffix.
- **`unevaluatedProperties` branching.** Draft 2020-12 uses `allOf` + `unevaluatedProperties: false`; Draft-04 flattens ancestor properties into each `definitions` entry, since Draft-04 cannot express the same semantics.

## What shipped

- `Format/src/generate_json_schema.rb` and `Format/src/json_schema/`.
- First files under `json_schema/MTConnect{Devices,Streams,Assets,Error}_2.X[_draft-04].schema.json`.

## Open items

- Dataset / Table handling not yet correct — addressed 2026-05-18.
- 3D event types not yet supported — addressed 2026-05-22.
