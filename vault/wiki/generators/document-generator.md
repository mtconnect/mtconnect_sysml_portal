---
title: Document Generator (Legacy LaTeX/PDF)
summary: The original documentation generator that emits LaTeX intended for PDF rendering. Superseded by the GH Pages + Jekyll path but retained for legacy outputs.
tags: [generators, pdf, reference, deprecated]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Document Generator (Legacy LaTeX/PDF)

`DocumentGenerator` (`Format/src/generate_documentation.rb`, implementation under `Format/src/latex/` and `Format/src/markdown/`) emits a LaTeX rendering of the model intended for PDF output. It is the **predecessor** of the GH Pages generator.

## Status

This path is **deprecated** as the primary publication route. The Jekyll site at `model.mtconnect.org` is the canonical home of the documentation; the PDF path is retained because:

1. Some consumers still want a single bound PDF of a release.
2. The LaTeX intermediate is also used by the `markdown_merger` to produce a flat Markdown bundle for offline distribution.

The generator is invoked explicitly with the `docs` operation:

```sh
ruby Format/src/generate.rb -v 2.7 docs
```

It is **not** part of the default CI build. Pages that describe this generator's output should carry the `deprecated` status tag.

## Files

| File | Role |
|---|---|
| `Format/src/latex/latexify.rb` | LaTeX emitter |
| `Format/src/latex/deglossifier` | Tool that resolves glossary cross-references in the emitted LaTeX |
| `Format/src/markdown/markdown_model.rb` | Per-package Markdown writer (different style from GH Pages) |
| `Format/src/markdown/markdown_type.rb` | Per-type Markdown writer |
| `Format/src/markdown/markdown_merger.rb` | Concatenates per-page output into a single offline-distributable Markdown bundle |
| `Format/src/markdown/documents.rb` | Top-level document driver |

## Migration path

For new work, prefer the GH Pages generator. The LaTeX path is maintained on a best-effort basis and is not run in CI.

## Related

- [GH Pages generator](./gh-pages-generator.md) — the canonical successor
- [Generator overview](./overview.md)
