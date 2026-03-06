---
title: "ValveStateEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 119
layout: default
---

# ValveStateEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `CLOSED` | 1.8 |  |  | [`ValveState`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ValveState.md %}) where flow is not possible, the aperture is static, and the valve is completely shut. |
| 2 | `CLOSING` | 1.8 |  |  | valve is transitioning from an `OPEN` state to a `CLOSED` state. |
| 3 | `OPEN` | 1.8 |  |  | [`ValveState`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ValveState.md %}) where flow is allowed and the aperture is static. > Note: For a binary value, `OPEN` indicates the valve has the maximum possible aperture. |
| 4 | `OPENING` | 1.8 |  |  | valve is transitioning from a `CLOSED` state to an `OPEN` state. |
