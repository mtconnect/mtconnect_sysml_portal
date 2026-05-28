---
title: JSON Schema Response Documents
summary: The four MTConnect response-document envelopes emitted as JSON Schema, and the SysML packages that contribute to each.
tags: [json-schema, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Response Documents

The MTConnect v2 wire protocol defines four response documents. The portal emits a top-level JSON Schema for each, with the package selection declared in `JsonSchemaGenerator::ROOT_DOCUMENTS` in [`Format/src/generate_json_schema.rb`](../generators/json-schema-generator.md):

| Envelope | Root element | Contributing SysML packages | Skipped packages |
|---|---|---|---|
| `MTConnectDevices` | `MTConnectDevices` | Device Information Model; Interface Interaction Model; Profile; Representations; MTConnectDevices Response Document | DataItem Types for Interface; Operation and Error Recovery |
| `MTConnectStreams` | `MTConnectStreams` | Observation Information Model; DataItem Types for Interface; Profile; Fundamentals | — |
| `MTConnectAssets` | `MTConnectAssets` | Asset Information Model; Profile; Fundamentals | — |
| `MTConnectError` | `MTConnectError` | Fundamentals; Profile | — |

The packages are the SysML packages on the model side; the file pulls those packages' classes into `$defs` (Draft 2020-12) or `definitions` (Draft-04) and emits the envelope as a required top-level property.

## Skipped models

Several Cameo packages are excluded from every response document by `JsonSchemaGenerator::SKIP_MODELS`:

```
CSV Imports, Simulation, MTConnect, Development Process,
Imports, Supporting Documents, MTConnect Device Validation Suite,
Reference Agent Architecture, WIP: Device Examples, WIP: Use Cases
```

These are infrastructure packages, work-in-progress areas, and reference architecture content that does not belong in the wire-format schema.

## Related

- [Overview](./overview.md)
- [Draft Semantics](./draft-semantics.md)
- [JSON Schema generator](../generators/json-schema-generator.md)
