---
title: "SensorStateDetectEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 108
layout: default
---

# SensorStateDetectEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `DETECTED` | 2.2 |  |  | sensor is active and the threshold has been met. |
| 2 | `NOT_DETECTED` | 2.2 |  |  | sensor is active and ready but the threshold has not been met. |
| 3 | `UNKNOWN` | 2.2 |  |  | sensor is active, but the state cannot be determined. > Note: unknown covers situations where the sensor reading is unstable. |
