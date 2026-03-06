---
title: "LocationTypeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 66
layout: default
---

# LocationTypeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

Enumeration for Location types

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `CRIB` | 1.2 |  |  | location with regard to a tool crib. |
| 2 | `END_EFFECTOR` | 1.7 |  |  | location associated with an end effector. |
| 3 | `EXPIRED_POT` | 1.7 |  |  | location for a tool that is no longer usable and is awaiting removal from a tool magazine or turret. |
| 4 | `POT` | 1.2 |  |  | number of the pot in the tool handling system. |
| 5 | `REMOVAL_POT` | 1.7 |  |  | location for a tool removed from a tool magazine or turret awaiting transfer to a location outside of the piece of equipment. |
| 6 | `RETURN_POT` | 1.7 |  |  | location for a tool removed from a <span class="hoverterm">spindle<span class="definition" data-term="spindle">mechanism that provides rotational capabilities to a piece of equipment. 

> Note: Typically used for either work holding, materials or cutting tools.

</span></span> or turret and awaiting return to a tool magazine. |
| 7 | `SPINDLE` | 1.7 |  |  | location associated with a <span class="hoverterm">spindle<span class="definition" data-term="spindle">mechanism that provides rotational capabilities to a piece of equipment. 

> Note: Typically used for either work holding, materials or cutting tools.

</span></span>. |
| 8 | `STAGING_POT` | 1.7 |  |  | location for a tool awaiting transfer to a tool magazine or turret from outside of the piece of equipment. |
| 9 | `STATION` | 1.2 |  |  | tool location in a horizontal turning machine. |
| 10 | `TRANSFER_POT` | 1.7 |  |  | location for a tool awaiting transfer from a tool magazine to spindle or a turret. |
