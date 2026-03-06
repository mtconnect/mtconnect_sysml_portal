---
title: "ControllerModeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 32
layout: default
---

# ControllerModeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `AUTOMATIC` | 1.0 |  |  | [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) is configured to automatically execute a program. |
| 2 | `EDIT` | 1.3 |  |  | [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) is currently functioning as a programming device and is not capable of executing an active program. |
| 3 | `FEED_HOLD` | 1.2 | 1.3 |  | axes of the device are commanded to stop, but the spindle continues to function. |
| 4 | `MANUAL` | 1.0 |  |  | [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) is not executing an active program. It is capable of receiving instructions from an external source – typically an operator. The [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) executes operations based on the instructions received from the external source. |
| 5 | `MANUAL_DATA_INPUT` | 1.0 |  |  | operator can enter a series of operations for the [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) to perform. The [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) will execute this specific series of operations and then stop. |
| 6 | `SEMI_AUTOMATIC` | 1.1 |  |  | [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) is operating in a mode that restricts the active program from processing its next process step without operator intervention. |
