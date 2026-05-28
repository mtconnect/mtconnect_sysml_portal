---
title: CI/CD Overview
summary: Single workflow, three jobs, end-to-end build and deploy on every push to main.
tags: [ci-cd, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# CI / CD Overview

The portal ships on every push to `main` via one GitHub Actions workflow (`.github/workflows/deploy.yml`). The workflow has three sequential jobs:

```
push to main          ┌──────────────┐    ┌─────────────┐    ┌────────┐
or workflow_dispatch ─►  build-model ├───►│  build-site ├───►│ deploy │
                      └──────────────┘    └─────────────┘    └────────┘
                              │                   │                │
                              ▼                   ▼                ▼
                         artifact:           artifact:        ssh + scp to
                         model-docs          deploy           projects.mtconnect.org
```

## Triggers

```yaml
on:
  push:
    branches: ["main"]
  workflow_dispatch:    # manual trigger from the Actions tab
```

Only `main` is built and deployed. Branch builds are not deployed; PR validation is not yet wired (see [Open questions in workflow.md](./workflow.md#open-items)).

## Concurrency

```yaml
concurrency:
  group: "pages"
  cancel-in-progress: true
```

Only one deploy can be in flight; a new push cancels any older runs that are still building. This prevents two deploys racing for the rsync target.

## Permissions

```yaml
permissions:
  contents: read
  pages: write
  id-token: write
```

`pages: write` and `id-token: write` are required for GitHub Pages deployment, even though the production target is currently the `projects.mtconnect.org` mirror rather than GitHub Pages itself. The repository is provisioned for either deploy target.

## What runs where

| Stage | What it does | Output |
|---|---|---|
| `build-model` | `cd Format && ./build` — invokes `ruby src/generate.rb -v <version> ghpages` for every version in `build.yml` | `build/Version<X.Y>/` uploaded as artifact `model-docs` |
| `build-site` | Downloads `model-docs`; `cd docs && ./build` — runs Jekyll once per version plus a root build | `deploy/` uploaded as artifact `deploy` |
| `deploy` | Downloads `deploy`; runs `./deploy_pages` which tars, scp's, and refreshes server-side symlinks | published site at `model.mtconnect.org` |

## Related

- [Workflow](./workflow.md) — the YAML in detail
- [Deploy](./deploy.md) — `deploy_pages` and the mirror
- [Jekyll Build](./jekyll-build.md) — `docs/build` and the per-version layout
- [Versioning](../portal/versioning.md) — how `build.yml` parameterizes the matrix
