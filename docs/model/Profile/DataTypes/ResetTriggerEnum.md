---
title: "ResetTriggerEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 99
layout: default
---

# ResetTriggerEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `ACTION_COMPLETE` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) that is measuring an action or operation is to be reset upon completion of that action or operation. |
| 2 | `ANNUAL` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is to be reset at the end of a 12-month period. |
| 3 | `DAY` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is to be reset at the end of a 24-hour period. |
| 4 | `LIFE` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is not reset and accumulates for the entire life of the piece of equipment. |
| 5 | `MAINTENANCE` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is to be reset upon completion of a maintenance event. |
| 6 | `MONTH` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is to be reset at the end of a monthly period. |
| 7 | `POWER_ON` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is to be reset when power was applied to the piece of equipment after a planned or unplanned interruption of power has occurred. |
| 8 | `SHIFT` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is to be reset at the end of a work shift. |
| 9 | `WEEK` | 1.4 |  |  | <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is to be reset at the end of a 7-day period. |
