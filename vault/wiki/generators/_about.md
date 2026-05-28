---
title: Generators
summary: The Ruby generator framework that transforms the MTConnect SysML/XMI model into Markdown for Jekyll, XSD 1.0/1.1, JSON Schema, OWL/Turtle, and the validation suite.
tags: [generators, meta]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Generators

> **Pattern: update-in-place** (see [SCHEMA.md §4](../../SCHEMA.md#4-documentation-patterns)). The generators are a living codebase; pages here describe the **current** behaviour. Significant changes are recorded in the [portal journal](../portal/journal/).

The portal is, in implementation, a collection of Ruby generators that consume one input — the Cameo-exported XMI of the MTConnect SysML model — and emit several derived artifacts. All generators share a common driver (`Format/src/generate.rb`) and the shared model parsing layer under `Format/src/lib/`.

## Pages

- [Overview](./overview.md) — driver, operations, and the shared model layer
- [GH Pages Generator](./gh-pages-generator.md) — Markdown for the Jekyll site
- [JSON Schema Generator](./json-schema-generator.md) — JSON Schema (Draft-04 and Draft 2020-12)
- [Schema Generator](./schema-generator.md) — XSD 1.0 and 1.1
- [OWL Generator](./owl-generator.md) — Turtle ontology, IOF-aligned
- [Validation Generator](./validation-generator.md) — Device validation suite
- [Document Generator](./document-generator.md) — LaTeX / PDF documentation (legacy path)
