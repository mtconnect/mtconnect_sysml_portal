---
title: "OperatingModeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 78
layout: default
---

# OperatingModeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.0 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `AUTOMATIC` | 2.0 |  |  | automatically execute instructions from a recipe or program. > Note: Setpoint comes from a recipe. |
| 2 | `MANUAL` | 2.0 |  |  | execute instructions from an external agent or person. > Note 1 to entry: Valve or switch is manipulated by an agent/person. > Note 2 to entry: Direct control of the PID output. % of the range: A user manually sets the % output, not the setpoint. |
| 3 | `SEMI_AUTOMATIC` | 2.0 |  |  | executes a single instruction from a recipe or program. > Note 1 to entry: Setpoint is entered and fixed, but the PID is controlling. > Note 2 to entry: Still goes through the PID control system. > Note 3 to entry: Manual fixed entry from a recipe. |
