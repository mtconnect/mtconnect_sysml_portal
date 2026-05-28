---
title: CI / CD
summary: The GitHub Actions workflow that builds the portal and deploys it to GitHub Pages and the mirror at projects.mtconnect.org. Update-in-place — the live state of the pipeline.
tags: [ci-cd, meta]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# CI / CD

> **Pattern: update-in-place** (see [SCHEMA.md §4](../../SCHEMA.md#4-documentation-patterns)). Pages here describe the **current** state of the workflow. Major changes are recorded in the [portal journal](../portal/journal/).

The portal uses a single GitHub Actions workflow (`.github/workflows/deploy.yml`) with three jobs: **build-model** (Ruby generators), **build-site** (Jekyll), and **deploy** (rsync to `projects.mtconnect.org` and refresh of the `latest` / `development` symlinks).

## Pages

- [Overview](./overview.md) — pipeline overview and trigger conditions
- [Workflow](./workflow.md) — the GitHub Actions jobs in detail
- [Deploy](./deploy.md) — the `deploy_pages` script, secrets, and server-side symlink refresh
- [Jekyll Build](./jekyll-build.md) — how `docs/build` orchestrates the per-version Jekyll runs
