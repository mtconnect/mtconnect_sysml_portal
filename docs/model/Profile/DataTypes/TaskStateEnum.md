---
title: "TaskStateEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 114
layout: default
---

# TaskStateEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `COMMITTED` | 2.7 |  |  | task state when all collaborators commit to the task |
| 2 | `COMMITTING` | 2.7 |  |  | task state when all collaborators indicate that they can participate by binding to the task |
| 3 | `COMPLETE` | 2.7 |  |  | task state when collaborators successfully implement the task |
| 4 | `FAIL` | 2.7 |  |  | task state when collaborators are unsuccessful in implementing the task |
| 5 | `INACTIVE` | 2.7 |  |  | default state when the task is created and any collaborators are yet to bind to the task |
| 6 | `PREPARING` | 2.7 |  |  | task state when a collaborator is ready and binds itself to the task |
