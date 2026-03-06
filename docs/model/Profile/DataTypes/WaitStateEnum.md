---
title: "WaitStateEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 120
layout: default
---

# WaitStateEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `MATERIAL_LOAD` | 1.5 |  |  | execution is waiting while material is being loaded. |
| 2 | `MATERIAL_UNLOAD` | 1.5 |  |  | execution is waiting while material is being unloaded. |
| 3 | `PART_LOAD` | 1.5 |  |  | execution is waiting while one or more discrete workpieces are being loaded. |
| 4 | `PART_UNLOAD` | 1.5 |  |  | execution is waiting while one or more discrete workpieces are being unloaded. |
| 5 | `PAUSING` | 1.5 |  |  | execution is waiting while the equipment is pausing but the piece of equipment has not yet reached a fully paused state. |
| 6 | `POWERING_DOWN` | 1.5 |  |  | execution is waiting while the equipment is powering down but has not fully reached a stopped state. |
| 7 | `POWERING_UP` | 1.5 |  |  | execution is waiting while the equipment is powering up and is not currently available to begin producing parts or products. |
| 8 | `RESUMING` | 1.5 |  |  | execution is waiting while the equipment is resuming the production cycle but has not yet resumed execution. |
| 9 | `SECONDARY_PROCESS` | 1.5 |  |  | execution is waiting while another process is completed before the execution can resume. |
| 10 | `TOOL_LOAD` | 1.5 |  |  | execution is waiting while a tool or tooling is being loaded. |
| 11 | `TOOL_UNLOAD` | 1.5 |  |  | execution is waiting while a tool or tooling is being unloaded. |
