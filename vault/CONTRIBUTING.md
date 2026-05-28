# Contributing to this wiki

Welcome — this guide is for contributors who are new to this documentation system, new to Claude, or both. Take five minutes to skim it before adding your first page.

---

## Before you start

Read these three files in order. Together they take about ten minutes.

1. [`README.md`](./README.md) — what this repo is
2. [`SCHEMA.md`](./SCHEMA.md) — the rules (frontmatter, folders, tags, links)
3. An existing folder under [`wiki/`](./wiki/) that uses the pattern you're about to write — [`wiki/portal/`](./wiki/portal/) for journal-driven, [`wiki/json-schema/`](./wiki/json-schema/) / [`wiki/generators/`](./wiki/generators/) / [`wiki/ci-cd/`](./wiki/ci-cd/) for update-in-place, [`wiki/portal/research/`](./wiki/portal/research/) for flat-reference

---

## Your first page

Most pages live under `wiki/<domain>/`. Here's the flow:

1. **Pick the folder.** Each `wiki/<domain>/` represents one topic. If your page doesn't fit any existing folder, propose a new one in a PR and ask a reviewer.
2. **Read the folder's `_about.md`.** It tells you which of the three patterns the folder uses (journal-driven, update-in-place, or flat). If you're writing inside a subfolder, read that subfolder's `_about.md` too — subfolders can override the pattern.
3. **Copy the template.** From `_templates/note.md`. Rename it to something kebab-case like `data-loader.md`.
4. **Fill in the frontmatter.** Title, one-sentence summary, tags from `_meta/taxonomy.md`, today's date in `created` and `updated`.
5. **Write the body.** Keep it focused — one page, one topic. Link to related pages with `[text](./relative/path.md)`.
6. **Commit and open a PR.** A reviewer will check the frontmatter and the folder fit.

---

## Adding a journal entry

Some folders track their work as a series of dated milestone entries — that's the **journal-driven** pattern. To add an entry:

1. Confirm the folder's `_about.md` says it's journal-driven.
2. Copy `_templates/journal-entry.md` into `wiki/<domain>/journal/`.
3. Name it `YYYY-MM-DD-short-slug.md` (e.g. `2026-05-18-v0.3-release.md`).
4. Fill in the four sections: What happened, Decisions made, What shipped, Open items.
5. Add a row to the timeline table in `wiki/<domain>/index.md` linking your entry.

---

## Using Claude

Three prompts to get you started. Open Claude (web or terminal) inside the repo and paste one.

### Prompt 1 — Draft a new page

```
Read CLAUDE.md and SCHEMA.md. I want to add a page to wiki/<domain>/
about <topic>. Here's what I know: <a few sentences or bullet points>.
Draft the page following the conventions for that folder.
```

### Prompt 2 — Turn a session into a journal entry

```
Read CLAUDE.md. I just finished a work session on <project>.
Here's what we did: <bullet list or paste of notes>.
Write a journal entry for wiki/<domain>/journal/ following the
journal-entry template.
```

### Prompt 3 — Review a page

```
Read SCHEMA.md, then review wiki/<domain>/<page>.md.
Check: frontmatter completeness, tag legality (against _meta/taxonomy.md),
status accuracy, and whether the content fits the folder's pattern
(see its _about.md). List any issues.
```

---

## Conventions cheat sheet

| Thing | Convention |
|---|---|
| Filenames | `kebab-case.md` |
| Journal filenames | `YYYY-MM-DD-kebab-slug.md` |
| Links | `[text](./relative/path.md)` — not `[[wikilinks]]` |
| Tags | From `_meta/taxonomy.md` only |
| `updated:` | Bump on every meaningful edit |
| New folder | Open a PR + ask a reviewer first |
| New tag | Update `_meta/taxonomy.md` in the same PR |

When in doubt, look at an existing page in the same `wiki/<domain>/` folder, or ask in your PR.
