---
title: "ConditionEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 28
layout: default
---

# ConditionEnum

**Supertype:** `SampleEnum`, `EventEnum`

**Stereotypes:** `<<extensible>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `ACTUATOR` | 1.1 |  |  | indication of a fault associated with an actuator. |
| 2 | `COMMUNICATIONS` | 1.1 |  |  | indication that the piece of equipment has experienced a communications failure. |
| 3 | `DATA_RANGE` | 1.2 |  |  | indication that the value of the data associated with a measured value or a calculation is outside of an expected range. |
| 4 | `LOGIC_PROGRAM` | 1.1 |  |  | indication that an error occurred in the logic program or programmable logic controller (PLC) associated with a piece of equipment. |
| 5 | `MOTION_PROGRAM` | 1.1 |  |  | indication that an error occurred in the motion program associated with a piece of equipment. |
| 6 | `SYSTEM` | 1.1 |  |  | general purpose indication associated with an electronic component of a piece of equipment or a controller that represents a fault that is not associated with the operator, program, or hardware. |
