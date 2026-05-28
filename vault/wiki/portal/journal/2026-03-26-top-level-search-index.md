---
title: "2026-03-26 Top-Level Search Index Promoted from Latest"
summary: After deploy, the root assets/js/search-data.json is overwritten with the index from the production version so the root search box returns canonical results.
tags: [portal, jekyll, architecture-decision, resolved]
source: manual
created: 2026-03-26
updated: 2026-05-27
---

# 2026-03-26 — Top-Level Search Index Promoted from Latest

## What happened

- The Just-the-Docs search box on the root page was returning results from every per-version build (or none, depending on how Jekyll merged the indexes). Two commits resolved this:
  - `98f9583` "Fixed link and search on top level page"
  - `4c8a157` "Include the owl generators" (incidental, same day)
- The fix: after all per-version builds complete, copy `deploy/Version<production>/assets/js/search-data.json` over `deploy/assets/js/search-data.json`. See `docs/build` near the end of the file.

## Decisions made

- **Root search reflects the production version.** Searching from the landing page is most useful when it surfaces the latest released model. Users who need older versions can search from inside that version's site.
- This is a post-Jekyll step, not a Jekyll plugin. Keeps the build mechanics in the orchestrator script where it is easy to see and easy to change.

## What shipped

- The `cp` at the end of `docs/build` that promotes the production search index to root.

## Open items

- None known.
