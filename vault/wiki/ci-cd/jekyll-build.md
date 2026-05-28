---
title: Jekyll Build
summary: How docs/build constructs a per-version Jekyll source tree on the fly, runs jekyll build once per version, and produces the deploy/ output.
tags: [ci-cd, jekyll, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Jekyll Build

`docs/build` is the Ruby script that orchestrates Jekyll. It runs once per version plus once for the root landing page, then promotes the production version's search index to the root.

## Per-version build

For each version `X.Y` in `build.yml`:

1. **Construct a Jekyll source tree** under `docs/tmp/Source<X.Y>/`:
   - Symlink `Version<X.Y>/MTConnectSysMLModel.xml` (as `MTConnectSysMLModel_V<X.Y>.xml`, so the file can be served for download).
   - Symlink every entry of `build/Version<X.Y>/*` (the generated markdown, `_config_version.yml`, `figures/`, `diagrams/`).
   - Symlink the shared theme assets (`_config.yml`, `_includes`, `_layouts`, `_sass`, `assets`, `404.html`).
2. **Run Jekyll**:
   ```
   bundle exec jekyll build \
     -s docs/tmp/Source<X.Y>/ \
     --config ./_config.yml,docs/tmp/Source<X.Y>/_config_version.yml \
     --baseurl /Version<X.Y> \
     -d deploy/Version<X.Y>/
   ```

The two-file `--config` order matters: the per-version `_config_version.yml` overrides the shared `_config.yml`, so the title is version-specific while every other setting comes from the shared file.

## Root build

For the landing page, `docs/build#write_root_page` synthesizes a `docs/tmp/Root/` source tree:

- A generated `index.md` listing the latest, development, and all built versions, with the contents of `docs/home.md` appended.
- A generated `_config_version.yml` with the title and `comment_url`.
- The standard theme symlinks.

Then Jekyll is invoked with `--baseurl /`, output going to `deploy/` (no `Version<X.Y>` subpath).

## Search-index promotion

After every build completes, `docs/build` runs:

```ruby
FileUtils.cp(
  "deploy/Version#{latest}/assets/js/search-data.json",
  "deploy/assets/js/search-data.json"
)
```

This is the step that makes the search box on the landing page return results from the **production** version rather than from the root page (which has no content of its own). See [2026-03-26 Top-Level Search Index](../portal/journal/2026-03-26-top-level-search-index.md).

## Working directory layout after build

```
deploy/
  index.html              ← root landing page
  404.html
  assets/
    js/search-data.json   ← copied from Version<production>
  Version2.0/
    index.html
    assets/
    figures/
    diagrams/
  Version2.1/
    …
  Version2.8/
    …
```

The `deploy/` tree is what `deploy_pages` tars and ships.

## Why symlinks

Symlinking the source tree (rather than copying) makes each Jekyll run cheap and makes it easy to inspect what is being built by listing `docs/tmp/Source<X.Y>/`. Jekyll dereferences symlinks at build time.

## Related

- [Workflow](./workflow.md)
- [Deploy](./deploy.md)
- [Portal architecture](../portal/architecture.md)
