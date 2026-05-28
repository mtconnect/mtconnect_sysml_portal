# Project Wiki — Claude Operating Instructions

> If you are an AI assistant working in this repository, read this file at the start of every session.

This repository is a project knowledge base. It is **not** code — it is markdown documentation organized by convention. Your job is to help contributors add, update, and search this documentation without breaking the conventions.

---

## Session start

1. Read this file (`CLAUDE.md`).
2. Read [`SCHEMA.md`](./SCHEMA.md) — it defines the frontmatter, folders, tags, and links.
3. If the user mentions a specific domain (e.g. "the data pipeline page"), read the relevant `wiki/<domain>/_about.md` to learn which pattern that folder uses.

---

## The three patterns

Every `wiki/<domain>/` folder declares its pattern in its `_about.md`. When you create or edit a page, follow the pattern of the folder you're in.

| Pattern | Shape |
|---|---|
| **Journal-driven** | `index.md` + concept pages at root + `journal/YYYY-MM-DD-slug.md` |
| **Update-in-place** | Pages edited directly; bump `updated:` on every edit; subcomponents in a subfolder; old versions stay as siblings (no archive folder) |
| **Flat reference** | Flat list of concept pages; optional `index.md`; no `journal/` folder |

**Nested patterns are allowed.** A subfolder can declare its own pattern via its own `_about.md`. Common cases inside a journal-driven project:

- `in-progress/` — update-in-place subfolder for the version currently being built (folded into the journal entry when the version ships, then deleted)
- `research/` — flat-reference subfolder for static background that doesn't change with milestones

Always check the nearest `_about.md` to learn the active pattern.

---

## Frontmatter

Every wiki page starts with this block:

```yaml
---
title: <Title Case page title>
summary: <one or two sentences>
tags: [<domain>, <type>, <status>]
source: manual
created: <YYYY-MM-DD>
updated: <YYYY-MM-DD>
---
```

- **Tags** come from `_meta/taxonomy.md` only. If you need a new tag, ask the user, update the taxonomy first, then use it.
- **Status** is one of `active`, `resolved`, `deprecated`.
- **`updated:`** must be bumped on every meaningful edit.

---

## Common tasks

### Add a new page

1. Confirm which `wiki/<domain>/` folder it belongs to (or ask if unclear).
2. Read that folder's `_about.md` (and any nested subfolder `_about.md` if relevant) to learn its pattern.
3. Copy `_templates/note.md` and fill in the frontmatter + body.
4. Use a kebab-case filename: `data-loader.md`, not `DataLoader.md`.
5. Link to related pages with relative markdown links: `[data loader](./data-loader.md)` or `[overview](../auth/overview.md)`.

### Add a journal entry (journal-driven folders only)

1. Verify the folder uses the journal-driven pattern (check its `_about.md`).
2. Copy `_templates/journal-entry.md` into `wiki/<domain>/journal/`.
3. Filename: `YYYY-MM-DD-short-slug.md`.
4. Fill in: What happened, Decisions made, What shipped, Open items.
5. Add a row to the timeline table in `wiki/<domain>/index.md`.

### Edit an existing page

1. Read the page first.
2. Make the edit.
3. Bump the `updated:` date in frontmatter.
4. If you changed a decision recorded on the page, add a short note about what changed and why.

---

## Things to avoid

- **Don't invent tags.** Use `_meta/taxonomy.md` or ask to extend it.
- **Don't create new top-level folders** without asking. The structure is fixed: `wiki/`, `_meta/`, `_templates/`, `output/`.
- **Don't archive old pages.** Update-in-place keeps old versions as siblings (e.g. `system-v1.md` next to `system-v2.md`). Journal entries are the history.
- **Don't use `[[wikilinks]]`** — they don't render on GitHub. Use `[text](./relative/path.md)` instead.
- **Don't write content the user didn't ask for.** If a page would benefit from another section, suggest it; don't add it silently.

---

## When in doubt

Ask the user. The conventions exist so contributors can read each other's work — guessing at conventions is worse than asking.
