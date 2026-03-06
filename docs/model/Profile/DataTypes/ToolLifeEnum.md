---
title: "ToolLifeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 115
layout: default
---

# ToolLifeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `MINUTES` | 1.2 |  |  | tool life measured in minutes. All units for minimum, maximum, and nominal **MUST** be provided in minutes. |
| 2 | `PART_COUNT` | 1.2 |  |  | tool life measured in parts. All units for minimum, maximum, and nominal **MUST** be provided as the number of parts. |
| 3 | `WEAR` | 1.2 |  |  | tool life measured in tool wear. Wear **MUST** be provided in millimeters as an offset to nominal. All units for minimum, maximum, and nominal **MUST** be given as millimeter offsets as well. The standard will only consider dimensional wear at this time. |
