# Tasks

> The canonical "what's next" surface for this project. Mirrors structured GitHub Issues (one issue per row); update both together when status changes.
>
> **Pattern:** humans and agents both edit this file by hand and via the GitHub Issues UI/CLI. A PR that closes an issue should also move the corresponding row out of `Active` / `Blocked` and into `Recently done`.

## Conventions

- **One row per task.** Each row links to a GitHub Issue via `[#N](https://github.com/<owner>/<repo>/issues/N)`.
- **Labels mirror columns.** Every issue gets a `type:*`, a `status:*`, an `owner:*`, and (if relevant) a `scope:*` label. See [`.github/labels.yml`](./.github/labels.yml) for the list and [`scripts/setup-labels.sh`](./scripts/setup-labels.sh) to install them.
- **Acceptance criteria live in the issue body**, not in this table. The table is a scannable index.
- **Dependencies use issue numbers.** A row in `Blocked` lists what it's waiting on. When the blocker closes, the row moves to `Active` (or `Queued` if waiting on capacity).
- **PRs close issues** via `Closes #N` in the PR body. Merging the PR auto-closes the issue.

## Active

Decisions to make + work happening now. Agents pick from here first.

| # | Task | Type | Owner | Depends on |
|---|------|------|-------|------------|
| #N | (replace this row with your first real task) | decision | human | — |

## Blocked

Will move to `Active` automatically when dependencies close.

| # | Task | Type | Owner | Depends on |
|---|------|------|-------|------------|
| #N | (example: write spec — waiting on a decision row above) | task | agent | #N |

## Backlog

Surfaced, prioritized, but not currently scheduled. Pull into `Active` when the relevant version starts.

| # | Task | Type | Owner | Scope | Notes |
|---|------|------|-------|-------|-------|
| #N | (example: deferred to v1.1) | task | agent | v1.1 | brief context |

## Recently done

Shipped or merged within the last week. Archive to the related milestone journal entry (in `wiki/<domain>/journal/`) once this section grows past ~10.

| Date | Item | Where |
|------|------|-------|
| YYYY-MM-DD | (example: feature X shipped) | PR #N · `wiki/<domain>/journal/YYYY-MM-DD-feature-x.md` |

## How agents use this file

A fresh agent looking at this repo should:

1. **Read this file first.** It's the canonical entry point.
2. **Pick a task from `Active`** matching its capability (`owner:agent` for autonomous work; `owner:human` rows wait for a human).
3. **For agent-actionable work,** open the GitHub Issue linked in the `#` column for full context (acceptance criteria, links, prior discussion).
4. **For tasks tied to an active version** (in-progress work), also read the relevant `wiki/<domain>/in-progress/` files for the design surface.
5. **Before starting work,** comment on the issue ("starting investigation" / "drafting") so other agents don't pick up the same task.
6. **Open a PR** referencing the issue: `Closes #N`. The PR description summarizes what shipped and why.
7. **Update this file in the PR:** move the row from `Active`/`Blocked` to `Recently done` (or to `Backlog` if work surfaced more tasks). Add new rows for surfaced follow-up work.

## How humans use this file

Same flow as agents, with two additions:

- **`owner:human` rows are yours to resolve.** Decisions an agent can't make autonomously — auth model choice, deployment target, naming, prioritization.
- **You also write rows.** When you brainstorm a new feature, file the surfaced questions and tasks here (and as issues) so an agent can pick up the implementation legwork later.

## Relationship to other surfaces

| Surface | What lives there | When you use it |
|---------|------------------|-----------------|
| This file (`TASKS.md`) | Canonical row-level task index | Always: starting point for "what's next" |
| GitHub Issues | Per-task detail, comments, history | When you need the full context on one task |
| `wiki/<domain>/in-progress/` | Active-version design surface | When working on the version currently being built |
| `wiki/<domain>/journal/` | Milestone history (shipped versions) | When you need historical context |
| `wiki/<domain>/<concept>.md` | Current state of the running system | When you need "how does this work today?" |
| Plans (e.g. `docs/superpowers/plans/...md`) | Step-by-step execution lists with `- [ ]` checkboxes | When executing a plan task-by-task via the writing-plans / subagent-driven-development skills |

## Notes on the agent-graph model

This file is the markdown projection of a richer task graph that also lives in GitHub Issues. The two surfaces are kept in sync manually for now (every PR that closes an issue should also update this file).

Future improvements (not required for the template baseline):

- A GitHub Action that watches issue state changes and rewrites this file automatically.
- A `.github/AGENTS.md` describing the agent roster and how to invoke each role (Planner, Implementer, Reviewer, Maintainer, Coordinator).
- A Projects v2 board for visual scheduling.
- Webhooks that wake up the appropriate role-agent on issue events.
