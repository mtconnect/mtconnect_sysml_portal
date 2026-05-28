---
title: "2026-03-10 Multi-Version Layout"
summary: Restructured the repository so each MTConnect Standard release has its own VersionX.Y/ directory and the generator runs once per version.
tags: [portal, versioning, architecture-decision, resolved]
source: manual
created: 2026-03-10
updated: 2026-05-27
---

# 2026-03-10 — Multi-Version Layout

## What happened

- `VersionX.Y/` directories created at the repo root, one per supported MTConnect Standard release (`dd88523` "Created version directories and multi-version generator changes").
- Generator extended to require `-v <version>` and to read the model from `VersionX.Y/MTConnectSysMLModel.xml`.
- First full sweep of all versions generated (`89a7786` "Generated all versions"). Initial `build` and `serve` scripts added (`dcbbc71`).

## Decisions made

- **One Jekyll site per version.** Each version gets its own build output tree under `deploy/Version<X.Y>/`. The published site links to all of them from a shared root page. See [Architecture](../architecture.md) and [Versioning](../versioning.md).
- **The XMI is the only per-version input.** Everything else — theme, generator code, `_config.yml` — is shared across versions.

## What shipped

- The `VersionX.Y/` directory convention.
- `Format/build` and `docs/build` iterating over the configured versions.

## Open items

- `build.yml` is the next step — explicit list of versions to build, plus production/development channel symlinks.
