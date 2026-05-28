---
title: "2026-05-22 3D Event Types and Validation Fixes"
summary: Added JSON Schema support for 3D event types; resolved validation issues exposed by the new schemas.
tags: [portal, json-schema, validation, implementation, resolved]
source: manual
created: 2026-05-22
updated: 2026-05-27
---

# 2026-05-22 — 3D Event Types and Validation Fixes

## What happened

- `1d45f47` "Added some tests and fixed validation issues" — validation issues surfaced by the new JSON Schema generator addressed.
- `77fbd54` "Support for 3D event types" — JSON Schema emitter handles 3D-vector event types.

## Decisions made

- 3D event types are emitted as fixed-length tuples in JSON, not as nested objects. This matches the XML wire format.

## What shipped

- Updated JSON Schema files; updated validation suite under `Format/src/validation/portal/`.

## Open items

- Schema `$id` URLs not yet aligned with the `schemas.mtconnect.org` namespace — addressed 2026-05-27.
