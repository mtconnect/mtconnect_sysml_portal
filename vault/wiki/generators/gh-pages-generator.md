---
title: GH Pages Generator
summary: Emits the Just-the-Docs-flavoured Markdown that the Jekyll site renders. One package and one type per file, with diagrams, inherited properties, and cross-links.
tags: [generators, portal, jekyll, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# GH Pages Generator

`GhPagesGenerator` (`Format/src/generate_ghpages.rb`, with implementation files under `Format/src/ghpages/`) walks the SysML model and emits one Markdown file per package and per type. The output is consumed by Jekyll with the Just-the-Docs theme.

## Output

```
build/Version<X.Y>/
  index.md              ← root of the per-version site
  <Package>/            ← one folder per emitted package
    index.md            ← package overview
    <Type>.md           ← one file per type, with diagram, properties, relations
  figures/              ← symlink to Version<X.Y>/figures/
  diagrams/             ← symlink to Version<X.Y>/diagrams/
  _config_version.yml   ← title + comment_url for this version
```

The directory under `build/` is what `docs/build` symlinks into `docs/tmp/Source<Version>/` for the Jekyll build (see [Portal architecture](../portal/architecture.md)).

## Files

| File | Role |
|---|---|
| `ghpages_model.rb` | Per-package writer; emits `index.md` and recurses into types |
| `ghpages_type.rb` | Per-type writer; renders properties, parents, constraints, enums, examples |
| `ghpages_diagram.rb` | Resolves and embeds diagram PNGs alongside the relevant types |
| `ghpages_version.rb` | Version-specific top-level content (title, navigation root) |
| `helpers.rb` | Markdown helpers — table emission, kramdown escape, navigation order |

## Front matter

Each emitted Markdown file carries Just-the-Docs front matter:

```yaml
---
title: <Type Name>
nav_order: <stable integer>
parent: <containing package title>
has_children: <bool>
layout: default
---
```

`nav_order` is stable across releases for a given type, so the navigation tree does not reshuffle when a new version is built.

## Skip list

```ruby
@skip_models = Set["CSV Imports", "Simulation", "MTConnect",
                   "Development Process", "Imports", "Supporting Documents",
                   "MTConnect Device Validation Suite"]
```

These Cameo packages are infrastructure or development containers and are not part of the published spec.

## Search

Just-the-Docs builds a per-site Lunr search index from the emitted Markdown. The orchestrator copies the production-version index to the root `deploy/assets/js/search-data.json` after build so the root search returns canonical results (see [2026-03-26 journal entry](../portal/journal/2026-03-26-top-level-search-index.md)).

## Related

- [Portal architecture](../portal/architecture.md)
- [CI/CD workflow](../ci-cd/workflow.md)
- [Generator overview](./overview.md)
