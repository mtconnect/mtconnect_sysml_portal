---
title: JSON Schema Overview
summary: The portal emits JSON Schema for the MTConnect v2 JSON wire format in two drafts per release per response document. This page summarizes what is emitted, where, and why.
tags: [json-schema, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# JSON Schema Overview

The portal emits a JSON Schema file for every combination of:

- **Response document** — `MTConnectDevices`, `MTConnectStreams`, `MTConnectAssets`, `MTConnectError`
- **MTConnect version** — currently `2.0` through `2.8`
- **JSON Schema draft** — Draft-04 (RapidJSON-compatible, suffixed `_draft-04`) and Draft 2020-12 (canonical, no suffix)

Output lives at the repo root under `json_schema/`:

```
json_schema/
  MTConnectAssets_2.0.schema.json
  MTConnectAssets_2.0_draft-04.schema.json
  MTConnectAssets_2.1.schema.json
  …
  MTConnectDevices_2.7.schema.json
  MTConnectDevices_2.7_draft-04.schema.json
  …
```

For 9 versions × 4 envelopes × 2 drafts the directory contains 72 files.

## `$id` and `$schema`

Each emitted file declares:

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$id": "https://schemas.mtconnect.org/schemas/MTConnectDevices_2.7.schema.json",
  "title": "MTConnectDevices",
  "description": "MTConnect MTConnectDevices response, v2 JSON, from SysML model v2.7.",
  …
}
```

The `$id` was aligned with `schemas.mtconnect.org` on 2026-05-27. See [the journal entry](../portal/journal/2026-05-27-schema-id-alignment.md).

`$schema` reflects the **draft** of the file itself:

| Draft | `$schema` value |
|---|---|
| Draft 2020-12 | `https://json-schema.org/draft/2020-12/schema` |
| Draft 4 | `http://json-schema.org/draft-04/schema#` |

## Why two drafts

The runtime validator embedded in the MTConnect C++ Agent uses RapidJSON, which only supports Draft-04. To let downstream tooling pick whichever draft is most appropriate, the generator emits both:

- **Draft 2020-12** — canonical artifact, no filename suffix. Uses `allOf` + `unevaluatedProperties: false` to model the SysML inheritance graph.
- **Draft-04** — `_draft-04` filename suffix. Flattens parent properties into each definition because Draft-04 cannot express `unevaluatedProperties`.

See [Draft Semantics](./draft-semantics.md).

## Related

- [Response Documents](./response-documents.md) — what each envelope contains
- [JSON Schema generator](../generators/json-schema-generator.md) — how the files are emitted
- [Portal architecture](../portal/architecture.md) — where the JSON Schema phase sits in the pipeline
