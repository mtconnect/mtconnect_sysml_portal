---
title: Version 2.8 Status
summary: Snapshot of in-flight work targeting MTConnect SysML Portal release 2.8 — generator changes, schema work, and known gaps.
tags: [portal, versioning, implementation, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Version 2.8 Status

`Version2.8/` is currently configured as the `development:` channel in [`build.yml`](../../../../build.yml). The 2.7 release is `production:`.

## What is in flight

- **JSON Schema generator (new).** First-class JSON Schema generation in two drafts (Draft-04 for RapidJSON runtime validation, Draft 2020-12 as canonical). Initial commit landed 2026-05-13; subsequent commits added Dataset/Table support (2026-05-18) and 3D event types (2026-05-22). The `$id` URLs were aligned with `schemas.mtconnect.org` on 2026-05-27. See [JSON Schema overview](../../json-schema/overview.md).
- **OWL generator (new).** Turtle-format ontology aligned with the Industrial Ontologies Foundry (IOF) constructs. First integrated into the default build on 2026-04-30. See [OWL generator](../../generators/owl-generator.md).
- **Validation fixes.** Several validation issues uncovered by the new JSON Schema generator were addressed on 2026-05-22.

## Known gaps

- The PDF/LaTeX path remains intact but is no longer the primary output. It is invoked only when the `docs` operation is requested explicitly.
- The runtime JSON validator (RapidJSON) supports Draft-04 only. This is why the JSON Schema generator emits both Draft-04 and Draft 2020-12.

## Build and channel state

| Channel | Version | Source of truth |
|---|---|---|
| `production:` | 2.7 | `build.yml` |
| `development:` | 2.8 | `build.yml` |
| `build:` | wildcard `*` | `build.yml` |

When 2.8 is declared GA, `build.yml` will be updated to set `production: 2.8` and `development:` will point at the next version (typically created in advance and seeded from 2.8's XMI).

## Related

- [Open questions](./open-questions.md)
- [Architecture](../architecture.md)
- [Versioning](../versioning.md)
