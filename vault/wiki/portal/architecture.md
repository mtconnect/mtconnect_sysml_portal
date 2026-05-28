---
title: Portal Architecture
summary: End-to-end architecture of the MTConnect SysML Portal, from the SysML/XMI source model through the Ruby generators and Jekyll build to the published site at model.mtconnect.org.
tags: [portal, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Portal Architecture

The portal is a deterministic, file-based pipeline. A single SysML model — exported from Cameo Systems Modeler as XMI — is the only authoritative input. Every published artifact (the Jekyll site, JSON Schema, XSD, OWL, validation set) is regenerated from that model on every build. There is no database, no runtime service, and no editable content on the published site.

## Pipeline

```
VersionX.Y/MTConnectSysMLModel.xml      (SysML/XMI source, one per release)
        │
        ▼
Format/src/generate.rb                  (Ruby driver; loads XMI with Nokogiri)
        │
        ├──> ghpages   → build/VersionX.Y/   (Markdown for Jekyll)
        ├──> schema    → schemas/VersionX.Y/ (XSD 1.0 and 1.1)
        ├──> json_schema → json_schema/      (Draft-04 + Draft 2020-12)
        ├──> owl       → owl/                (Turtle ontology)
        └──> validation → Format/src/validation/portal/
        │
        ▼
docs/build                              (Ruby orchestrator)
        │
        ▼
docs/tmp/Source<Version>/               (per-version Jekyll source; symlinks the
                                         generated markdown alongside the shared
                                         _config.yml, _includes, _layouts, _sass)
        │
        ▼
bundle exec jekyll build                (one build per version, plus a root page)
        │
        ▼
deploy/Version<X.Y>/                    (static HTML, one tree per version)
deploy/                                  (root index + assets shared across versions)
        │
        ▼
deploy_pages                            (tar, scp to projects.mtconnect.org,
                                         atomically swap, refresh `latest` and
                                         `development` symlinks)
```

## Components

### SysML/XMI source

Each supported MTConnect release has its own checked-in directory `VersionX.Y/` containing `MTConnectSysMLModel.xml` plus exported PNG diagrams (`diagrams/` and `figures/`). The XMI is the Cameo-exported XML serialization of the SysML model; the portal does not modify it.

### Ruby generator framework

`Format/src/generate.rb` is the driver. It parses the XMI once with Nokogiri, then runs whichever operations are listed on the command line (`docs`, `schema`, `validation`, `ghpages`, `owl`, `json_schema`). Each operation has its own generator class under `Format/src/`:

- `GhPagesGenerator` — emits Just-the-Docs-flavoured Markdown for every package, type, and diagram. This is what the Jekyll site renders.
- `SchemaGenerator` — emits XSD 1.0 and 1.1.
- `JsonSchemaGenerator` — emits JSON Schema in Draft-04 (RapidJSON-compatible) and Draft 2020-12 (canonical) — see [JSON Schema overview](../json-schema/overview.md).
- `OwlGenerator` — emits Turtle ontology files, including the IOF-aligned `MTConnectCore.ttl`.
- `ValidationGenerator` — emits the device validation suite.
- `DocumentGenerator` — older LaTeX/PDF path; retained for legacy outputs.

See [`../generators/`](../generators/) for the per-generator documentation.

### Build orchestration

Two thin Ruby scripts drive the build:

- `Format/build` reads `build.yml`, iterates the configured versions, and invokes `ruby src/generate.rb -v <version> ghpages` per version. The output lands in `build/Version<X.Y>/`.
- `docs/build` constructs a temporary per-version Jekyll source tree under `docs/tmp/Source<Version>/` by symlinking the generated markdown next to the shared theme assets (`_config.yml`, `_includes`, `_layouts`, `_sass`, `assets`, `404.html`). It then runs `bundle exec jekyll build` once per version, plus one extra build for the root landing page. Final output is `deploy/Version<X.Y>/` (and `deploy/` for the root).

The split exists because the **same** `_config.yml` and theme are shared across all version builds — only the source markdown and a per-version `_config_version.yml` (title and `comment_url`) vary.

### Jekyll site

The Jekyll site uses [Just-the-Docs](https://just-the-docs.com/) as the theme (vendored under `docs/`). Per-page front matter from the generator drives navigation (`nav_order`, `has_children`, `parent`). A site-wide search index is built by Just-the-Docs at build time; the top-level `deploy/assets/js/search-data.json` is overwritten with the index from the **production** version so the root search box returns results from the latest release. See [CI/CD overview](../ci-cd/overview.md) for build details.

### Deploy

`deploy_pages` runs after the Jekyll build. It tars `deploy/`, scp's the archive to `deploy@projects.mtconnect.org`, atomically swaps the document root under `/opt/redmine/model/root/`, then refreshes two symlinks on the server:

- `latest → Version<production>` (from `build.yml`)
- `development → Version<development>` (from `build.yml`)

This means the URLs `https://model.mtconnect.org/latest/` and `.../development/` always point to whichever versions `build.yml` declares as the production and development channels.

## Why this design

- **Single source of truth.** The SysML model is the authoritative spec. All schemas, ontologies, and documentation are derived; they cannot drift.
- **Per-version isolation.** Each MTConnect release has its own model directory, its own build output, and its own deploy tree. Generating 2.4 cannot affect 2.7.
- **Static output.** The published site is plain HTML/JS. No runtime, no database, no auth surface.
- **CI-driven.** GitHub Actions runs the full pipeline on every push to `main`; the deploy step is the only piece that requires secrets.

## Related

- [Versioning](./versioning.md) — `build.yml` mechanics and the production / development channels
- [Generators](../generators/) — per-generator documentation
- [CI/CD](../ci-cd/) — workflow, deploy, and mirror plumbing
- [SysML / XMI primer](./research/sysml-xmi-primer.md) — what the input model looks like
