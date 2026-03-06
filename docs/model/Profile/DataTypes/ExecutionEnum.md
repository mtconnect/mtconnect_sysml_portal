---
title: "ExecutionEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 53
layout: default
---

# ExecutionEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `ACTIVE` | 1.0 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) is actively executing an instruction. |
| 2 | `FEED_HOLD` | 1.3 |  |  | motion of the active axes are commanded to stop at their current position. |
| 3 | `INTERRUPTED` | 1.0 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) suspends the execution of the program due to an external signal. Action is required to resume execution. |
| 4 | `OPTIONAL_STOP` | 1.4 |  |  | command from the program has intentionally interrupted execution. The [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) **MAY** have another state that indicates if the execution is interrupted or the execution ignores the interrupt instruction. |
| 5 | `PROGRAM_COMPLETED` | 1.3 |  |  | program completed execution. |
| 6 | `PROGRAM_OPTIONAL_STOP` | 1.3 | 1.4 |  | program has been intentionally optionally stopped using an M01 or similar code. **DEPRECATED** in *version 1.4* and replaced with `OPTIONAL_STOP`. |
| 7 | `PROGRAM_STOPPED` | 1.3 |  |  | command from the program has intentionally interrupted execution. Action is required to resume execution. |
| 8 | `READY` | 1.0 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) is ready to execute instructions. It is currently idle. |
| 9 | `STOPPED` | 1.0 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) program is not `READY` to execute. |
| 10 | `WAIT` | 1.5 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) suspends execution while a secondary operation executes. Execution resumes automatically once the secondary operation completes. |
