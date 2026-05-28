---
title: XML Schema Generator
summary: Emits XSD 1.0 and XSD 1.1 for the MTConnect XML wire format from the SysML/XMI model.
tags: [generators, xml-schema, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# XML Schema Generator

`SchemaGenerator` (`Format/src/generate_schema.rb`, implementation under `Format/src/schema/`) emits the XSD schemas that validate MTConnect XML response documents. It runs in two passes — once per XSD version (`1.0` and `1.1`).

## Files

| File | Role |
|---|---|
| `schema.rb` | Top-level XSD emitter; iterates `%w{1.0 1.1}` |
| `xmi_parser.rb` | Reads supplementary glossary data from a second XMI subtree |
| `parser.rb` | Parsing helpers used by `xmi_parser.rb` |

## Output

The XSD generator writes one schema per response document envelope per XSD version per release. The exact output path is set inside `schema.rb`.

## XSD 1.0 vs. 1.1

Most consumers still use XSD 1.0; XSD 1.1 is emitted for tools that support it (e.g. Saxon-EE, Xerces with 1.1 mode). The split keeps the canonical artifact backwards-compatible while the 1.1 file gets to use features such as `xs:assert`, conditional type assignment, and improved wildcard semantics.

## Related

- [Generator overview](./overview.md)
- [Portal architecture](../portal/architecture.md)
