---
title: "FilterEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 56
layout: default
---

# FilterEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `MINIMUM_DELTA` | 1.3 |  |  | new value **MUST NOT** be reported for a data item unless the measured value has changed from the last reported value by at least the delta given as the value of this element. The value of [`Filter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}) **MUST** be an absolute value using the same units as the reported data. |
| 2 | `PERIOD` | 1.4 |  |  | data reported for a data item is provided on a periodic basis. The `PERIOD` for reporting data is defined in the value of the [`Filter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}). The value of [`Filter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}) **MUST** be an absolute value reported in seconds representing the time between reported samples of the value of the data item. |
