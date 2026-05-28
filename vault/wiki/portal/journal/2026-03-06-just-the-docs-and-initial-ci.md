---
title: "2026-03-06 Just-the-Docs Adoption and Initial CI"
summary: Vendored Just-the-Docs into ./docs, wired up an initial GitHub Actions workflow that builds the model and the Jekyll site as separate jobs.
tags: [portal, ci-cd, jekyll, implementation, resolved]
source: manual
created: 2026-03-06
updated: 2026-05-27
---

# 2026-03-06 — Just-the-Docs Adoption and Initial CI

## What happened

- Just-the-Docs theme adopted (`0c3e406` "Added just the docs"); previously a git submodule, vendored in place (`3f2ecca` "Removed submodule").
- Site source moved into `docs/` (`c670e67`, `04a49ff`).
- First CI workflow added (`0d66e19` "Added workflows", `c66a722` "Added model generation workflow").
- Workflow split into two jobs — `build-model` produces the generated markdown, `build-site` runs Jekyll. They communicate via the `model-docs` artifact (`213d036` "Added needs", `b79f882` "Upgraded to upload/download artifact v4").

## Decisions made

- **Two-job CI.** Model generation and Jekyll build run in separate jobs so the markdown is treated as an artifact and the failure mode of each phase is visible independently. See [CI/CD workflow](../../ci-cd/workflow.md).
- **Vendor the theme.** Submoduling Just-the-Docs introduced too many CI failure modes. Vendoring under `docs/` is the simpler default.

## What shipped

- `docs/` with Just-the-Docs theme assets.
- `.github/workflows/deploy.yml` with `build-model`, `build-site`, and `deploy` jobs.
- Asset workarounds: `c48e93d` "Added necessary vendor directories", `c010c7c` "Added js vendor assets".

## Open items

- Top-level landing page (links to all versions) does not exist yet — handled later on 2026-03-18.
- Production deploy target (`projects.mtconnect.org`) not yet wired in.
