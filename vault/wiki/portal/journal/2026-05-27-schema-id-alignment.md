---
title: "2026-05-27 JSON Schema $id Aligned with schemas.mtconnect.org"
summary: JSON Schema $id values rewritten to use schemas.mtconnect.org URLs so they align with the canonical MTConnect schema namespace.
tags: [portal, json-schema, architecture-decision, resolved]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# 2026-05-27 — JSON Schema $id Aligned with schemas.mtconnect.org

## What happened

- `045c22d` "Changed schema ids to align with mtconnect schemas files." — `$id` values in every emitted JSON Schema file now use the form `https://schemas.mtconnect.org/schemas/MTConnect<Doc>_<X.Y>.schema.json` (with `_draft-04` suffix where relevant).

## Decisions made

- **Stable canonical URLs for `$id`.** The schema files now identify themselves under the same namespace used by the XML XSDs. This lets external tooling that resolves either format use the same base namespace.
- `$id` is treated as a stable identifier — it does not move when the artifact is republished. Validators that resolve `$id` against the live file get the same content.

## What shipped

- All files under `json_schema/`.
- Updated `JsonSchemaGenerator` to emit the canonical `$id`.

## Open items

- The `schemas.mtconnect.org` host needs to actually serve these files. Out of scope for this repo; tracked with the infrastructure team.
