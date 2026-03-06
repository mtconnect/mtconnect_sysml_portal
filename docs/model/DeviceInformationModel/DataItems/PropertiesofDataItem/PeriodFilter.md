---
title: "PeriodFilter"
parent: "Properties of DataItem Package"
grand_parent: "DataItems Package"
nav_order: 11
layout: default
---

# PeriodFilter

**Supertype:** `Filter`

**Stereotypes:** `<<ImplementationFormat>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |  2.3 (Previous: [2.2](https://model.mtconnect.org/versions/2.2/periodfilter)) |

data reported for a data item is provided on a periodic basis. The `PERIOD` for reporting data is defined in the value of the [`Filter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}).

The value of [`Filter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}) **MUST** be an absolute value reported in seconds representing the time between reported samples of the value of the data item.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/FilterEnum.md %}"><code>FilterEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `type` **MUST** default to `PERIOD`.

</td>
</tr>
<tr><td><code>value</code></td><td><code>SECOND</code></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
