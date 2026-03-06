---
title: "EquipmentMode"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 105
layout: default
---

# EquipmentMode

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

indication that a piece of equipment, or a sub-part of a piece of equipment, is performing specific types of activities.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/EquipmentModeEnum.md %}"><code>EquipmentModeEnum</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.4</td><td></td><td>1</td>
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
| [`EquipmentMode.Delay`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EquipmentModeDelay.md %}) | 1.4 |  |
| [`EquipmentMode.Loaded`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EquipmentModeLoaded.md %}) | 1.4 |  |
| [`EquipmentMode.Operating`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EquipmentModeOperating.md %}) | 1.4 |  |
| [`EquipmentMode.Powered`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EquipmentModePowered.md %}) | 1.4 |  |
| [`EquipmentMode.Working`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EquipmentModeWorking.md %}) | 1.4 |  |

