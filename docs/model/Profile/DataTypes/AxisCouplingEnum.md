---
title: "AxisCouplingEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 11
layout: default
---

# AxisCouplingEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `MASTER` | 1.1 |  |  | axis is the master of the [`CoupledAxes`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CoupledAxes.md %}). |
| 2 | `SLAVE` | 1.1 |  |  | axis is a slave to the [`CoupledAxes`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CoupledAxes.md %}). |
| 3 | `SYNCHRONOUS` | 1.1 |  |  | axes are not physically connected to each other but are operating together in lockstep. |
| 4 | `TANDEM` | 1.1 |  |  | axes are physically connected to each other and operate as a single unit. |
