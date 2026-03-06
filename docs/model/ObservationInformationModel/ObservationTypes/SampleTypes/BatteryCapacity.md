---
title: "BatteryCapacity"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 39
layout: default
---

# BatteryCapacity

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.1 |  |   |

maximum rated charge a battery is capable of maintaining based on the battery discharging at a specified current over a specified time period.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>2.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>2.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>2.1</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `ACTUAL`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`BatteryCapacity.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/BatteryCapacityActual.md %}) | 2.1 |  |
| [`BatteryCapacity.Target`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/BatteryCapacityTarget.md %}) | 2.1 |  |

