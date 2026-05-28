---
title: "2026-03-18 Root Landing Page and base-url Fixes"
summary: Added the top-level landing page that links to all versions, with multiple commits to chase down the base-url quirk in GitHub Pages.
tags: [portal, jekyll, implementation, resolved]
source: manual
created: 2026-03-18
updated: 2026-05-27
---

# 2026-03-18 — Root Landing Page and base-url Fixes

## What happened

- `docs/build` extended to produce a synthetic root Jekyll source at `docs/tmp/Root/` that lists every built version and includes `home.md` (`14318e3` "Added root page", `1ab445f` "Some cosmetic changes to the root page.", `f767e8e` "Cleanup").
- A run of fixes addressed GitHub-Pages base-url handling, which was rewriting links incorrectly when the site was served from a subpath:
  - `b94ceb5` "Trying to fix base url in ci/cd"
  - `f809bc2` "Another attempted fix"
  - `7cc5deb` "Try with longer version"
  - `0bcc235` "Dump the environement for the build"
  - `5192886` "Fixed base url override"
  - `2244d79` "Check whey root page is not generating correctly"

## Decisions made

- **Root page is its own Jekyll build.** Rather than try to construct a multi-version site from one build, the root page is built independently (with `baseurl=""`) and merged into the deploy tree. Per-version builds use `--baseurl /VersionX.Y`.
- **One `_config.yml`, multiple `_config_version.yml`.** The shared config holds theme, plugins, and excludes. Each per-version build adds a small `_config_version.yml` with the version-specific title and `comment_url`.

## What shipped

- `docs/home.md` and `docs/build#write_root_page`.
- Stable `--baseurl /Version<X.Y>` per-version, `--baseurl /` for the root.

## Open items

- Search across versions still surfaces results from every version. Tightened later on 2026-03-26.
