---
title: "Sample"
parent: "DataItem Types Package"
grand_parent: "DataItems Package"
nav_order: 3
layout: default
---

# Sample

**Supertype:** `DataItem`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

abstract [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) that is continuously changing or analog data value.

### Description

This data can be measured at any point-in-time and will always produce a result.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>category</code></td><td><a href="{% link model/Profile/DataTypes/CategoryEnum.md %}"><code>CategoryEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
