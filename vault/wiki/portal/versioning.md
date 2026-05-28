---
title: Portal Versioning
summary: How the portal selects which MTConnect Standard versions to build, and how the production and development channels publish the latest/ and development/ symbolic links.
tags: [portal, versioning, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Portal Versioning

The portal builds **one independent Jekyll site per MTConnect Standard release**, plus a root landing page that links to all of them. Two channels — `production` and `development` — are published as server-side symlinks so external links such as `model.mtconnect.org/latest/` and `.../development/` continue to resolve as releases progress.

## `build.yml`

`build.yml` at the repo root is the single configuration surface that controls the build matrix and channels:

```yaml
# Which version will be built and deployed
build:
  - '*'

# Creates symbolic links for the version to redirect
development: 2.8
production: 2.7
```

### `build:`

A list of versions to build. Each entry corresponds to a `VersionX.Y/` directory at the repo root. Two forms are accepted:

- A literal version string: `'2.7'` → builds `Version2.7/`.
- A wildcard: `'*'` → expands at build time to every `VersionX.Y/` directory present. This was introduced 2026-03-17 so that adding a new version directory does not require editing `build.yml`. See journal entry [2026-03-17 Build Yml Wildcards](./journal/2026-03-17-build-yml-wildcards.md).

The driver `versions_for_build` in `lib/utils.rb` resolves the list. Command-line arguments to `Format/build` or `docs/build` override the YAML entries — e.g. `./build 2.7` builds only 2.7.

### `production:` and `development:`

Two scalar version strings. They do not affect what is **built** — they only affect what is **linked**. After a successful deploy, the deploy script creates two symlinks on the server:

```
/opt/redmine/model/root/latest      → /opt/redmine/model/root/Version<production>
/opt/redmine/model/root/development → /opt/redmine/model/root/Version<development>
```

This means:

- Promoting a new release to `latest` is a one-line PR that bumps `production:` in `build.yml`.
- The development URL always tracks whatever version is currently under active work.

## Version directory layout

Each `VersionX.Y/` directory contains:

```
VersionX.Y/
  MTConnectSysMLModel.xml      ← Cameo-exported XMI (the only input)
  diagrams/                    ← per-package SysML diagram PNGs
  figures/                     ← informative figures referenced from the spec
```

The generator copies / symlinks `diagrams/` and `figures/` into the per-version build output so the Jekyll site can reference them with relative URLs.

## Adding a new version

1. Export the SysML model from Cameo as XMI. Save the XML and exported figures into a new `VersionX.Y/` directory at the repo root.
2. If `build:` is not the wildcard `'*'`, add the new version to the list.
3. Decide whether the new version should become `development:` (typical) or `production:` (when promoting a release). Update `build.yml`.
4. Push to `main`. The CI workflow ([CI/CD overview](../ci-cd/overview.md)) builds every configured version and publishes the new symlinks.

## Removing a version

Versions less than 2.0 were removed from the top-level page on 2026-03-16 (commit `25a6986`). The current portal does not link to or build versions < 2.0; the directories were dropped from the repository at the same time.

## Related

- [Architecture](./architecture.md) — where versions sit in the overall pipeline
- [CI/CD overview](../ci-cd/overview.md) — how the workflow consumes `build.yml`
- [Deploy](../ci-cd/deploy.md) — the deploy script and the symlink refresh
