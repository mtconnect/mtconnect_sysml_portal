---
title: "MaintenanceListResult"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 72
layout: default
---

# MaintenanceListResult

**Supertype:** `Table`

**Stereotypes:** `<<valueType>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.0 |  |   |

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>Value</code></td><td><code>float</code></td><td>2.0</td><td></td><td>1</td>
<td markdown="block">

current interval value of the activity. 

</td>
</tr>
<tr><td><code>Interval</code></td><td><a href="{% link model/Profile/DataTypes/MaintenanceListIntervalEnum.md %}"><code>MaintenanceListIntervalEnum</code></a></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

interval of the value observed. 

</td>
</tr>
<tr><td><code>NextServiceDate</code></td><td><code>datetime</code></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

next date/time stamp that maintenance should be performed. 

</td>
</tr>
<tr><td><code>Reset</code></td><td><code>datetime</code></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

last date/time stamp of the <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> was reset. 

</td>
</tr>
<tr><td><code>Severity</code></td><td><code>integer</code></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

level of severity on a scale of 1-10. 

</td>
</tr>
<tr><td><code>Direction</code></td><td><a href="{% link model/Profile/DataTypes/MaintenanceListDirectionEnum.md %}"><code>MaintenanceListDirectionEnum</code></a></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

direction of the value observed. 

</td>
</tr>
<tr><td><code>Name</code></td><td><code>string</code></td><td>2.0</td><td></td><td>1</td>
<td markdown="block">

identifier of the maintenance activity. 

</td>
</tr>
<tr><td><code>LastServiceDate</code></td><td><code>datetime</code></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

last date/time stamp that maintenance was performed. 

</td>
</tr>
<tr><td><code>Units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`units`. See `Device Information Model`. 

</td>
</tr>
<tr><td><code>Target</code></td><td><code>float</code></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

target value of the next maintenance. 

</td>
</tr>
</tbody></table>
