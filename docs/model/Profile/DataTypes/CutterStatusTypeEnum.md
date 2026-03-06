---
title: "CutterStatusTypeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 38
layout: default
---

# CutterStatusTypeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

Enumeration for CutterStatus values.

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `ALLOCATED` | 1.2 |  |  | tool is has been committed to a piece of equipment for use and is not available for use in any other piece of equipment. |
| 2 | `AVAILABLE` | 1.2 |  |  | tool is available for use. If this is not present, the tool is currently not ready to be used. |
| 3 | `BROKEN` | 1.2 |  |  | premature tool failure. |
| 4 | `EXPIRED` | 1.2 |  |  | tool has reached the end of its useful life. |
| 5 | `MEASURED` | 1.2 |  |  | tool has been measured. |
| 6 | `NEW` | 1.2 |  |  | new tool that has not been used or first use. Marks the start of the tool history. |
| 7 | `NOT_REGISTERED` | 1.2 |  |  | tool cannot be used until it is entered into the system. |
| 8 | `RECONDITIONED` | 1.2 |  |  | tool has been reconditioned. |
| 9 | `UNALLOCATED` | 1.2 |  |  | tool has not been committed to a process and can be allocated. |
| 10 | `UNAVAILABLE` | 1.2 |  |  | tool is unavailable for use in metal removal. |
| 11 | `UNKNOWN` | 1.2 |  |  | tool is an indeterminate state. This is the default value. |
| 12 | `USED` | 1.2 |  |  | tool is in process and has remaining tool life. |
