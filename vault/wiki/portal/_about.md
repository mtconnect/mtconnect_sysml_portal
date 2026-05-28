---
title: MTConnect SysML Portal
summary: The portal project — the Ruby transformer, Jekyll site, and supporting tooling that publish the MTConnect SysML model as a browsable documentation site at model.mtconnect.org.
tags: [portal, meta]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# MTConnect SysML Portal

> **Pattern: journal-driven** (see [SCHEMA.md §4](../../SCHEMA.md#4-documentation-patterns)). The portal ships in versions (one per supported MTConnect Standard release: 2.0 … 2.8) and most decisions are version-shaped, so the journal captures milestones while concept pages describe the current shipped state.

This folder documents the **portal as a project**: how the pieces fit together, where work is going, and the history of changes. For documentation of individual generators (JSON Schema, OWL, XSD, GH Pages markdown), see [`../generators/`](../generators/). For CI/CD plumbing see [`../ci-cd/`](../ci-cd/).

## What's in this folder

- [`index.md`](./index.md) — navigation hub with the project timeline table
- [`architecture.md`](./architecture.md) — current end-to-end architecture (XMI → generators → build → deploy)
- [`versioning.md`](./versioning.md) — how `build.yml` controls which model versions are built and how production / development channels are linked
- [`journal/`](./journal/) — dated milestone entries; the project history
- [`in-progress/`](./in-progress/) — **nested update-in-place subfolder** for the version currently under development (2.8). Folded into the journal when the version ships.
- [`research/`](./research/) — **nested flat-reference subfolder** for background that doesn't change with milestones (e.g. SysML/XMI primer, MTConnect Standard scope)

## Subfolders and their patterns

| Subfolder | Pattern | Authority |
|---|---|---|
| `journal/` | journal-driven (dated entries) | this `_about.md` |
| `in-progress/` | update-in-place | [`in-progress/_about.md`](./in-progress/_about.md) |
| `research/` | flat-reference | [`research/_about.md`](./research/_about.md) |
