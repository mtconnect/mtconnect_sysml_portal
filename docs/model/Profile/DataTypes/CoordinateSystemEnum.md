---
title: "CoordinateSystemEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 34
layout: default
---

# CoordinateSystemEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 | 2.0 |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `MACHINE` | 1.0 | 2.0 |  | unchangeable coordinate system that has machine zero as its origin. |
| 2 | `WORK` | 1.0 | 2.0 |  | coordinate system that represents the working area for a particular workpiece whose origin is shifted within the `MACHINE` coordinate system. If the `WORK` coordinates are not currently defined in the piece of equipment, the `MACHINE` coordinates will be used. |
