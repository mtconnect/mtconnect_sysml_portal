---
title: "CycleCount"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 66
layout: default
---

# CycleCount

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

accumulation of the number of times a cyclic function has attempted to, or is planned to attempt to execute.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.8</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `ALL`.

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.8</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>result</code></td><td><code>integer</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`CycleCount.Aborted`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CycleCountAborted.md %}) | 1.8 |  |
| [`CycleCount.All`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CycleCountAll.md %}) | 1.8 |  |
| [`CycleCount.Bad`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CycleCountBad.md %}) | 1.8 |  |
| [`CycleCount.Complete`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CycleCountComplete.md %}) | 1.8 |  |
| [`CycleCount.Failed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CycleCountFailed.md %}) | 1.8 |  |
| [`CycleCount.Good`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CycleCountGood.md %}) | 1.8 |  |
| [`CycleCount.Remaining`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CycleCountRemaining.md %}) | 1.8 |  |
| [`CycleCount.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CycleCountTarget.md %}) | 1.8 |  |

