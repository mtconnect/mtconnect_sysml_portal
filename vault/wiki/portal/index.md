---
title: MTConnect SysML Portal — Index
summary: Navigation hub for the portal project, including the project timeline and links to architecture, versioning, in-progress work, and research.
tags: [portal, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# MTConnect SysML Portal

The MTConnect SysML Portal transforms the MTConnect SysML model (authored in Cameo Systems Modeler and exported as XMI) into a browsable documentation site, JSON Schema files, XML Schemas (XSD 1.0 and 1.1), an OWL/Turtle ontology, and a validation suite. The published site lives at [model.mtconnect.org](https://model.mtconnect.org) and mirrors to `projects.mtconnect.org/model/root/`.

## Concept pages

- [Architecture](./architecture.md) — current portal architecture: SysML/XMI → Ruby generators → Jekyll → GitHub Pages → mirror
- [Versioning](./versioning.md) — how `build.yml` selects versions; how `production` and `development` channels create the `latest/` and `development/` symbolic links

## Project timeline

| Date | Milestone | Journal entry |
|---|---|---|
| 2026-03-04 | First cut of the GH Pages generator | [2026-03-04 First Cut Gh Pages Generator](./journal/2026-03-04-first-cut-ghpages-generator.md) |
| 2026-03-06 | Initial CI/CD workflow; moved site into `docs/`, adopted Just-the-Docs theme | [2026-03-06 Just The Docs And Initial Ci](./journal/2026-03-06-just-the-docs-and-initial-ci.md) |
| 2026-03-10 | Multi-version layout (`VersionX.Y/`) and per-version generator runs | [2026-03-10 Multi Version Layout](./journal/2026-03-10-multi-version-layout.md) |
| 2026-03-17 | `build.yml` extended to support wildcards and ARGV overrides | [2026-03-17 Build Yml Wildcards](./journal/2026-03-17-build-yml-wildcards.md) |
| 2026-03-18 | Root landing page + base-url fixes for GH Pages | [2026-03-18 Root Page And Baseurl](./journal/2026-03-18-root-page-and-baseurl.md) |
| 2026-03-26 | Top-level search index promoted from latest version | [2026-03-26 Top Level Search Index](./journal/2026-03-26-top-level-search-index.md) |
| 2026-04-25 | Version 2.8 added to the build matrix | [2026-04-25 Add Version 2 8](./journal/2026-04-25-add-version-2-8.md) |
| 2026-04-30 | OWL generator integrated into the default build set | [2026-04-30 Owl Generator Integrated](./journal/2026-04-30-owl-generator-integrated.md) |
| 2026-05-13 | Initial JSON Schema and OWL generator commits land | [2026-05-13 Json Schema And Owl Initial](./journal/2026-05-13-json-schema-and-owl-initial.md) |
| 2026-05-18 | Dataset and Table support in JSON Schema | [2026-05-18 Dataset Table Support](./journal/2026-05-18-dataset-table-support.md) |
| 2026-05-22 | 3D event types supported; validation issues fixed | [2026-05-22 3d Events And Validation Fixes](./journal/2026-05-22-3d-events-and-validation-fixes.md) |
| 2026-05-27 | Schema `$id` values aligned with mtconnect schema URLs | [2026-05-27 Schema Id Alignment](./journal/2026-05-27-schema-id-alignment.md) |

## In progress

The version currently under development is **2.8**. Active design and open questions live in [`in-progress/`](./in-progress/) — an update-in-place subfolder. When 2.8 ships, the work there is folded into a closing journal entry and the folder is reset.

## Research

Static background material that informs the portal — SysML/XMI primer, MTConnect Standard scope, and notes on the Cameo export pipeline — lives in [`research/`](./research/), a flat-reference subfolder.
