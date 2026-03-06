---
title: "CharacteristicStatusEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 18
layout: default
---

# CharacteristicStatusEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `BASIC_OR_THEORETIC_EXACT_DIMENSION` | 2.2 |  |  | nominal provided without tolerance limits. <em>QIF 3:2018 5.10.2.6</em> |
| 2 | `FAIL` | 2.2 |  |  | measurement is not within acceptable tolerances. |
| 3 | `INDETERMINATE` | 2.2 |  |  | measurement cannot be determined. |
| 4 | `NOT_ANALYZED` | 2.2 |  |  | measurement cannot be evaluated. |
| 5 | `PASS` | 2.2 |  |  | measurement is within acceptable tolerances. |
| 6 | `REWORK` | 2.2 |  |  | failed, but acceptable constraints achievable by utilizing additional manufacturing processes. |
| 7 | `SYSTEM_ERROR` | 2.2 |  |  | measurement is indeterminate due to an equipment failure. |
| 8 | `UNDEFINED` | 2.2 |  |  | status of measurement cannot be determined. |
