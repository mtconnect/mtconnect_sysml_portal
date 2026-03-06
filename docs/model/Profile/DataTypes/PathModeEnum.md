---
title: "PathModeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 85
layout: default
---

# PathModeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `INDEPENDENT` | 1.1 |  |  | path is operating independently and without the influence of another path. |
| 2 | `MASTER` | 1.2 |  |  | path provides information or state values that influences the operation of other [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) of similar type. |
| 3 | `MIRROR` | 1.1 |  |  | axes associated with the path are mirroring the motion of the `MASTER` path. |
| 4 | `SYNCHRONOUS` | 1.1 |  |  | physical or logical parts which are not physically connected to each other but are operating together. |
