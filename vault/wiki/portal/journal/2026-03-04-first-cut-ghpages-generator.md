---
title: "2026-03-04 First Cut of GH Pages Generator"
summary: Initial commit of the GH Pages markdown generator that walks the SysML/XMI model and emits Just-the-Docs-compatible markdown.
tags: [portal, generators, implementation, resolved]
source: manual
created: 2026-03-04
updated: 2026-05-27
---

# 2026-03-04 — First Cut of GH Pages Generator

## What happened

- Repository scaffolded (`156207c` "Initial commit").
- `GhPagesGenerator` added (`6eb947d` "First cut at gh pages generator"). The generator walks the XMI model, emits one markdown file per type, and writes the Just-the-Docs front matter that drives navigation.

## Decisions made

- Output target is Just-the-Docs over Jekyll, not raw GitHub Pages markdown. This gets navigation, search, and a consistent theme without rewriting either.
- Generator runs from `Format/src/generate.rb` as a named operation (`ghpages`), parallel to the existing `docs`, `schema`, and `validation` operations.

## What shipped

- `Format/src/generate_ghpages.rb` and `Format/src/ghpages/`.
- Initial unstyled output under `build/`.

## Open items

- Need a Jekyll source tree that consumes the generated markdown.
- Need a CI workflow that runs the generator and Jekyll build on every push.
