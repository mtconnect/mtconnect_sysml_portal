---
title: "EquipmentTimer"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 85
layout: default
---

# EquipmentTimer

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

amount of time a piece of equipment or a sub-part of a piece of equipment has performed specific activities.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`EquipmentTimer.Delay`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/EquipmentTimerDelay.md %}) | 1.4 |  |
| [`EquipmentTimer.Loaded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/EquipmentTimerLoaded.md %}) | 1.4 |  |
| [`EquipmentTimer.Operating`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/EquipmentTimerOperating.md %}) | 1.4 |  |
| [`EquipmentTimer.Powered`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/EquipmentTimerPowered.md %}) | 1.4 |  |
| [`EquipmentTimer.Working`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/EquipmentTimerWorking.md %}) | 1.4 |  |

