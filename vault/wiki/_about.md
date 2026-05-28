---
title: Wiki Folder
summary: Synthesized knowledge pages for the MTConnect SysML Portal, organized by domain. Each subfolder declares its documentation pattern.
tags: [meta]
source: manual
created: 2026-01-15
updated: 2026-05-27
---

# wiki/

Synthesized knowledge pages for the MTConnect SysML Portal, organized by domain. **Not transcripts** — pages here summarize and cite sources.

Every subfolder declares its documentation pattern (journal-driven / update-in-place / flat reference) in its own `_about.md`. See [SCHEMA.md §4](../SCHEMA.md#4-documentation-patterns).

## Domains

- [`portal/`](./portal/) — the SysML portal itself: architecture, transformer pipeline, and milestones. **Journal-driven**, with nested `in-progress/` (current development) and `research/` (background).
- [`json-schema/`](./json-schema/) — the JSON Schema artifacts emitted by the portal for the MTConnect v2 JSON wire format. **Update-in-place**.
- [`generators/`](./generators/) — the Ruby generators that transform the SysML/XMI model into Markdown, JSON Schema, XSD, OWL, and validation artifacts. **Update-in-place**.
- [`ci-cd/`](./ci-cd/) — the GitHub Actions build and deploy pipeline, including the Jekyll site and the rsync-to-`projects.mtconnect.org` step. **Update-in-place**.

A subfolder may itself contain nested folders with a different pattern (e.g. the `research/` flat-reference subfolder inside `portal/`). Always check the nearest `_about.md` to learn the active pattern.
