---
title: "MinimumDeltaFilter"
parent: "Properties of DataItem Package"
grand_parent: "DataItems Package"
nav_order: 10
layout: default
---

# MinimumDeltaFilter

**Supertype:** `Filter`

**Stereotypes:** `<<ImplementationFormat>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |  2.3 (Previous: [2.2](https://model.mtconnect.org/versions/2.2/minimumdeltafilter)) |

new value **MUST NOT** be reported for a data item unless the measured value has changed from the last reported value by at least the delta given as the value of this element.

The value of [`Filter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}) **MUST** be an absolute value using the same units as the reported data.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/FilterEnum.md %}"><code>FilterEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `type` **MUST** default to `MINIMUM_DELTA`.

</td>
</tr>
</tbody></table>
