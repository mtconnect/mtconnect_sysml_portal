# Vault Schema & Contributor Operating Instructions

> **Read this file before editing or adding to this wiki.** It defines the rules every page follows so contributors can read each other's work without surprises.

---

## 1. Vault structure

```
README.md                ← landing page for new contributors
CLAUDE.md                ← context for AI assistants
CONTRIBUTING.md          ← how to add or update pages
SCHEMA.md                ← this file (the rules)
log.md                   ← append-only change log

wiki/                    ← synthesized knowledge, organized by domain
  _about.md
  <domain>/              ← your project's actual content

_meta/
  taxonomy.md            ← controlled tag vocabulary

_templates/
  note.md                ← generic page template
  journal-entry.md       ← journal-entry template
  about.md               ← _about.md folder declaration template

output/                  ← generated deliverables (decks, reports, exports)
```

---

## 2. Note template

Every page in `wiki/` (including `_about.md` files) starts with this frontmatter block. Copy from `_templates/note.md`.

### Required fields

| Field     | Type             | Description                                     |
|-----------|------------------|-------------------------------------------------|
| `title`   | string           | Human-readable page title                       |
| `summary` | 1–2 sentences    | What this page covers; scannable                |
| `tags`    | list of strings  | Only values defined in `_meta/taxonomy.md`      |
| `source`  | `manual` or path | Where the content came from                     |
| `created` | YYYY-MM-DD       | Date the page was created                       |
| `updated` | YYYY-MM-DD       | Date of last meaningful edit                    |

### Optional fields

| Field     | Description                                               |
|-----------|-----------------------------------------------------------|
| `project` | Repo or project name this page belongs to                 |
| `uuid`    | Source conversation or external system ID                 |

---

## 3. Folder roles

| Folder         | Belongs here                                       | Does NOT belong here              |
|----------------|----------------------------------------------------|-----------------------------------|
| `wiki/`        | Synthesized concept pages organized by domain      | Drafts, transcripts, deliverables |
| `output/`      | Final deliverables (decks, reports, exports)       | Drafts, source material           |
| `_meta/`       | Taxonomy and other authoritative meta files        | Content notes                     |
| `_templates/`  | Templates only                                     | Content                           |

Every folder under `wiki/` must have an `_about.md` declaring its documentation pattern (see §4) and its scope.

---

## 4. Documentation patterns

Each `wiki/<domain>/` folder uses exactly one of three patterns. The pattern is declared in the folder's `_about.md`. Don't mix patterns inside one folder.

### Journal-driven

For active code projects that ship versions. The folder contains:

- `index.md` — navigation hub with a timeline table
- Concept pages at the root — describe the **current** state
- `journal/YYYY-MM-DD-slug.md` — dated milestone entries

New milestone → new journal entry. Concept pages get updated to reflect the new state.

### Update-in-place

For living systems being maintained. The folder contains:

- Concept pages edited directly (no journal)
- `updated:` is bumped in frontmatter on every meaningful edit
- Subcomponents go in a single-level subfolder (e.g. `components/`)
- Old versions stay as **siblings**, not in an archive folder (e.g. `system-v1.md` next to `system-v2.md`)

### Flat reference

For static background, research, or external context. The folder contains:

- A flat list of concept pages
- Optional `index.md` if navigation helps
- One level of nesting is allowed for sub-topics
- No `journal/` folder

### Nested patterns

The "don't mix patterns" rule applies to a **single folder level**. A subfolder is its own folder and can declare its own pattern via its own `_about.md`.

Inside a journal-driven project, this gives you three time slices plus optional background — each living in the pattern that fits its rhythm:

- **Past** — the `journal/` folder (dated milestone entries)
- **Present** — concept pages at the root (current shipped state, edited each milestone)
- **Active** — an `in-progress/` update-in-place subfolder, for the version being built right now
- **Background** — a `research/` flat-reference subfolder, for static research that doesn't change with milestones

```
wiki/robot-control-app/                ← journal-driven (per its _about.md)
  _about.md                            ← declares: journal-driven
  index.md
  architecture.md                      ← Present
  journal/                             ← Past
    2026-01-15-kickoff.md
    2026-02-03-v0.1-milestone.md
  in-progress/                         ← Active (update-in-place subfolder)
    _about.md                          ← declares: update-in-place
    v0.2-design.md
    v0.2-open-questions.md
  research/                            ← Background (flat-reference subfolder)
    _about.md                          ← declares: flat-reference
    prior-art.md
    vendor-comparison.md
```

Rules for nested patterns:

- The subfolder MUST have its own `_about.md` that explicitly declares its pattern.
- Link from the parent `index.md` to the subfolder so it's discoverable.
- One level of nesting only. If you find yourself nesting two patterns deep, the project is probably two projects — split it.

### Lifecycle of an `in-progress/` subfolder

When the version being worked on ships, the in-progress content has to go somewhere. Three options — pick one based on how the work shook out:

1. **Fold and delete** (default). The milestone journal entry captures what mattered; the in-progress folder is deleted. Clean slate for the next version.
2. **Promote selectively.** Useful content moves out — design notes get folded into the architecture page, decisions get cited in the journal entry. The rest is deleted.
3. **Archive as snapshot.** Rename to `versions/v0.X/`, flip the `_about.md` to flat-reference + `resolved`. Useful if audit or regulatory needs require a frozen record. Usually overkill.

Rule of thumb: if the in-progress work is one page of notes, just keep it as a concept page at the root (no subfolder needed). Use `in-progress/` only when the work has grown to three or more files.

See [`wiki/portal/`](./wiki/portal/) for a live example showing the journal-driven parent with both a nested update-in-place `in-progress/` subfolder and a nested flat-reference `research/` subfolder.

---

## 5. Tag rules

All tags are defined in `_meta/taxonomy.md`. Do not invent tags ad hoc — update the taxonomy first, then use the tag in your page.

Every wiki page must have:

- At least one **domain tag** (matches the `wiki/<domain>/` folder name)
- At least one **type tag** (`architecture-decision`, `how-to`, `reference`, `implementation`, `research`, or `meta`)
- Exactly one **status tag** (`active`, `resolved`, or `deprecated`)

---

## 6. Link conventions

Use **relative markdown links** so links render and click correctly on GitHub.

- Same folder: `[architecture](./architecture.md)`
- Parent folder: `[overview](../overview.md)`
- Cross-domain: `[auth overview](../../auth/overview.md)`

Do not use `[[wikilinks]]` — they render as plain text on GitHub.

Link liberally. A link to a page that doesn't exist yet is a useful signal that the page is worth writing.

---

## 7. Contradiction handling

When two pages disagree on a factual or design point:

1. Prefer the more recent source.
2. Document both views, citing each.
3. Tag `open-question` until resolved; once settled, tag the page `resolved` and link the page that resolves it.
4. Don't silently delete the older view — it may represent a valid earlier state.

---

## 8. Change log

Every meaningful change to `SCHEMA.md`, `_meta/taxonomy.md`, or any file in `_templates/` is recorded in `log.md` as a new line with the date and a one-sentence summary. The log is append-only — don't delete or rewrite past entries.
