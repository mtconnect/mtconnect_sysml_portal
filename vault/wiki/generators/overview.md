---
title: Generator Framework Overview
summary: The shared driver, command-line surface, model-parsing layer, and operation dispatch that all generators in the portal share.
tags: [generators, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Generator Framework Overview

All generators are driven by `Format/src/generate.rb`. The driver parses the XMI once, then dispatches to one or more named operations.

## Invocation

```sh
cd Format
ruby src/generate.rb -v 2.7 ghpages           # emit markdown for v2.7
ruby src/generate.rb -v 2.7 schema validation # emit XSD and validation
ruby src/generate.rb -v 2.7 json_schema       # emit JSON Schema
ruby src/generate.rb -v 2.7 owl               # emit OWL/Turtle
```

### Command-line surface

| Flag | Meaning |
|---|---|
| `-v, --version VERSION_NUM` | **Required.** The MTConnect version to build. Selects `Version<X.Y>/MTConnectSysMLModel.xml` as the input. |
| `-m, --model MODEL_VERSION` | Optional model version override. |
| `-d, --[no-]debug` | Enables debug logging. |
| `--json-draft DRAFT` | Limits JSON Schema emission to a single draft (`draft_04` or `draft_2020_12`). Default: both. |
| positional args | One or more operations: `docs`, `schema`, `validation`, `ghpages`, `owl`, `json_schema`. |

## Operations

| Operation | Generator class | Output | Purpose |
|---|---|---|---|
| `ghpages` | `GhPagesGenerator` | `build/Version<X.Y>/` markdown | Source for Jekyll |
| `schema` | `SchemaGenerator` | `schemas/Version<X.Y>/` XSD | XML wire-format schemas |
| `json_schema` | `JsonSchemaGenerator` | `json_schema/` | JSON wire-format schemas |
| `owl` | `OwlGenerator` | `owl/` Turtle | OWL ontology |
| `validation` | `ValidationGenerator` | `Format/src/validation/portal/` | Device validation suite |
| `docs` | `DocumentGenerator` | LaTeX | Legacy PDF path |

Operations are independent. A run can request any subset.

## Shared parsing layer (`Format/src/lib/`)

| File | What it provides |
|---|---|
| `type.rb` | Class graph node — properties, inheritance, constraints, stereotypes |
| `model.rb` | Package-level container, root of the type graph |
| `relation.rb` | Associations and references between types |
| `documentation.rb` | Extracts documentation strings from XMI annotations |
| `constraint.rb` | OCL-style constraints harvested from `ownedRule` elements |
| `stereotype.rb` | Cameo stereotype application — `Stereotype.collect_stereotypes(xmi)` is called once per run |
| `operation.rb` | UML operation parsing |
| `diagram.rb`, `diagrams.rb` | Resolves diagram PNG references from the Cameo XMI extension subtree |
| `extensions.rb` | Cross-cutting helpers used by generators |
| `lazy_pointer.rb` | Lazy XMI cross-reference resolution |

Generators subclass or wrap these to add output-format-specific logic — e.g. `JsonSchemaType` adds the JSON-Schema-keyword emission strategy on top of the shared `Type` parser.

## Per-generator file layout

| Generator | Driver file | Type / model subclasses |
|---|---|---|
| GH Pages | `Format/src/generate_ghpages.rb` | `Format/src/ghpages/` |
| Schema | `Format/src/generate_schema.rb` | `Format/src/schema/` |
| JSON Schema | `Format/src/generate_json_schema.rb` | `Format/src/json_schema/` |
| OWL | `Format/src/generate_owl.rb` | `Format/src/owl/` |
| Validation | `Format/src/generate_validation.rb` | `Format/src/validation/` |
| Documentation (LaTeX) | `Format/src/generate_documentation.rb` | `Format/src/latex/`, `Format/src/markdown/` |

## Skip lists

Most generators carry a `@skip_models` set that excludes infrastructure or work-in-progress Cameo packages (e.g. `CSV Imports`, `Simulation`, `Imports`, `Supporting Documents`, `WIP: Device Examples`). The lists vary slightly — for example, the OWL generator additionally skips `Fundamentals`, `Reference Agent Architecture`, `Asset Information Model`, and `Interface Interaction Model` to keep the ontology focused on the device and observation models. The exact list lives at the top of each generator class.

## Related

- [Portal architecture](../portal/architecture.md) — how the generators fit into the pipeline
- [SysML / XMI primer](../portal/research/sysml-xmi-primer.md) — the shape of the input
