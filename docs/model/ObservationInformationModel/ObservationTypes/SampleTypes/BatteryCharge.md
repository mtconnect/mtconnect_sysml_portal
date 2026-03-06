---
title: "BatteryCharge"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 42
layout: default
---

# BatteryCharge

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.1 |  |   |

value of the battery's present capacity expressed as a percentage of the battery's maximum rated capacity.

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
| [`BatteryCharge.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/BatteryChargeActual.md %}) | 2.1 |  |
| [`BatteryCharge.Target`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/BatteryChargeTarget.md %}) | 2.1 |  |

