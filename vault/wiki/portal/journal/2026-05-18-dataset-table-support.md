---
title: "2026-05-18 Dataset and Table Support in JSON Schema"
summary: JSON Schema generator extended to handle DataSet and Table observation representations.
tags: [portal, json-schema, generators, implementation, resolved]
source: manual
created: 2026-05-18
updated: 2026-05-27
---

# 2026-05-18 — Dataset and Table Support in JSON Schema

## What happened

- `89cbece` "Added dataset and table support" — JSON Schema emitter handles the `DataSet` and `Table` representation variants on observations.

## Decisions made

- DataSet and Table observations use distinct JSON shapes that cannot be derived purely from the SysML inheritance graph. The generator special-cases them in [`json_schema_type.rb`](../../generators/json-schema-generator.md).

## What shipped

- Updated JSON Schema files under `json_schema/`.

## Open items

- 3D event types still pending — addressed 2026-05-22.
