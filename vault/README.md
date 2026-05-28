# MTConnect SysML Portal — Project Wiki

This vault is the project knowledge base for the [MTConnect SysML Portal](../). The published portal lives at [model.mtconnect.org](https://model.mtconnect.org) and mirrors to `projects.mtconnect.org/model/root/`.

The vault itself does not get published; it is a Markdown reference for contributors (human and AI) working on the portal codebase.

---

## What's in here

| File / folder | What it's for |
|---|---|
| `README.md` | This file — the landing page for new contributors |
| `CLAUDE.md` | Context for Claude (and other AI assistants). Read once per session. |
| `CONTRIBUTING.md` | How to add or update a page, with example Claude prompts |
| `SCHEMA.md` | The rules — frontmatter, folders, tags, links. **Read this before editing.** |
| `TASKS.md` | Optional task graph for agent-driven workflows |
| `wiki/` | The MTConnect SysML Portal knowledge base, organized by domain |
| `_meta/taxonomy.md` | The list of legal tags |
| `_templates/` | Templates to copy when starting a new page or journal entry |
| `output/` | Generated deliverables (slide decks, reports, exports) |
| `log.md` | Append-only log of changes to schema and taxonomy |

---

## Domains in `wiki/`

| Domain | Pattern | What it covers |
|---|---|---|
| [`wiki/portal/`](./wiki/portal/) | Journal-driven | The portal as a project — architecture, versioning, milestones. Nested `in-progress/` (current development version) and `research/` (background). |
| [`wiki/json-schema/`](./wiki/json-schema/) | Update-in-place | The JSON Schema artifacts emitted by the portal — drafts, response documents, naming, `$id` |
| [`wiki/generators/`](./wiki/generators/) | Update-in-place | The Ruby generator framework — driver, model layer, and one page per generator (GH Pages, JSON Schema, XSD, OWL, validation, LaTeX) |
| [`wiki/ci-cd/`](./wiki/ci-cd/) | Update-in-place | The GitHub Actions workflow, Jekyll build orchestration, and `deploy_pages` mirror script |

Every folder in `wiki/` has its own `_about.md` that declares its documentation pattern (see [SCHEMA.md §4](./SCHEMA.md#4-documentation-patterns)).

---

## Quick start

1. Read [`SCHEMA.md`](./SCHEMA.md) for the rules.
2. Browse [`wiki/portal/index.md`](./wiki/portal/index.md) to understand the overall project shape and history.
3. To add a new page, follow [`CONTRIBUTING.md`](./CONTRIBUTING.md).

---

## Using Claude

[`CLAUDE.md`](./CLAUDE.md) at the vault root gives Claude the conventions so it doesn't have to be told twice. [`CONTRIBUTING.md`](./CONTRIBUTING.md) has copy-paste prompts for the three common workflows:

- **Add a new page** — draft a wiki page on a topic
- **Add a journal entry** — summarize a session into a journal entry under `wiki/portal/journal/`
- **Review my page** — check a page against `SCHEMA.md`
