---
title: "2026-03-17 build.yml Wildcards and ARGV Overrides"
summary: Build driver extended to accept '*' wildcards in build.yml and to take a version list from ARGV, making it cheaper to add a new VersionX.Y/ directory.
tags: [portal, versioning, implementation, resolved]
source: manual
created: 2026-03-17
updated: 2026-05-27
---

# 2026-03-17 — build.yml Wildcards and ARGV Overrides

## What happened

- `lib/utils.rb#versions_for_build` rewritten to expand `'*'` entries in `build.yml` against the actual `VersionX.Y/` directories on disk (`806b36c` "Changed build to take args or file. Also supports wildcards for easier maintenance.").
- Command-line arguments now override the YAML list, so `./build 2.7` builds only 2.7.

## Decisions made

- **Wildcards over hand-maintained lists.** Adding a new version directory should not require editing `build.yml`. The wildcard `'*'` is now the default in the committed `build.yml`.
- **ARGV overrides YAML.** Useful for local iteration without changing the build matrix the CI sees.

## What shipped

- `build.yml: build: ['*']`.
- `versions_for_build` in `lib/utils.rb` with the wildcard expansion logic.

## Open items

- Behaviour when a new `VersionX.Y/` directory is added with an incomplete XMI is undefined. Tracked in [in-progress/open-questions.md](../in-progress/open-questions.md).
