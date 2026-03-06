---
title: "FunctionalModeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 59
layout: default
---

# FunctionalModeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `MAINTENANCE` | 1.3 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) is not currently producing product. It is currently being repaired, waiting to be repaired, or has not yet been returned to a normal production status after maintenance has been performed. |
| 2 | `PROCESS_DEVELOPMENT` | 1.3 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) is being used to prove-out a new process, testing of equipment or processes, or any other active use that does not result in the production of product. |
| 3 | `PRODUCTION` | 1.3 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) is currently producing product, ready to produce product, or its current intended use is to be producing product. |
| 4 | `SETUP` | 1.3 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) is not currently producing product. It is being prepared or modified to begin production of product. |
| 5 | `TEARDOWN` | 1.3 |  |  | [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) is not currently producing product. Typically, it has completed the production of a product and is being modified or returned to a neutral state such that it may then be prepared to begin production of a different product. |
