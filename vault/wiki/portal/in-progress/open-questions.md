---
title: Version 2.8 Open Questions
summary: Design questions and policy choices that are open for the 2.8 release of the portal.
tags: [portal, research, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Version 2.8 — Open Questions

Open design questions and policy choices being worked through for 2.8. Resolved entries should be moved to the closing journal entry when the version ships.

## JSON Schema

- **Draft promotion path.** When should Draft-04 emission be retired? Currently both drafts are emitted to support RapidJSON-based runtime validators. Promotion depends on the validator ecosystem catching up to 2020-12.
- **`unevaluatedProperties` semantics for SysML inheritance.** Draft 2020-12 supports `allOf` + `unevaluatedProperties: false`; Draft-04 requires flattening parent properties into the child definition. The split is in `JsonSchemaGenerator::DRAFTS` (see [generators/json-schema-generator.md](../../generators/json-schema-generator.md)) — confirm that both emit identical validation behaviour on the example device files.

## OWL / Ontology

- **IOF alignment depth.** Which IOF construct and individual ontologies are imported by default in `MTConnectCore.ttl` and which are left to downstream users? Current import set is conservative.
- **Per-package Turtle files.** The generator emits one `.ttl` per package (29 files in the current `owl/` directory). Confirm whether downstream consumers expect a single merged file in addition.

## Versioning

- **Wildcard vs. explicit version list.** The `build: ['*']` wildcard was added 2026-03-17 to avoid hand-maintaining the list. Confirm CI build-time behaviour when a new `VersionX.Y/` is added with an incomplete XMI (should the build fail loudly or skip?).
