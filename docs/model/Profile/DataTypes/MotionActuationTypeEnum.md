---
title: "MotionActuationTypeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 74
layout: default
---

# MotionActuationTypeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `DIRECT` | 1.7 |  |  | movement is initiated by the component. |
| 2 | `NONE` | 1.7 |  |  | no actuation of this axis. > Note: Actuation of `NONE` can be either a derived `REVOLUTE` or `PRISMATIC` motion or static `FIXED` relationship. |
| 3 | `VIRTUAL` | 1.7 |  |  | motion is computed and is used for expressing an imaginary movement. |
