---
title: "DeactivationCount"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 79
layout: default
---

# DeactivationCount

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

accumulation of the number of times a function has attempted to, or is planned to attempt to, deactivate or cease.

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
| [`DeactivationCount.Aborted`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DeactivationCountAborted.md %}) | 1.8 |  |
| [`DeactivationCount.All`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DeactivationCountAll.md %}) | 1.8 |  |
| [`DeactivationCount.Bad`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DeactivationCountBad.md %}) | 1.8 |  |
| [`DeactivationCount.Complete`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DeactivationCountComplete.md %}) | 1.8 |  |
| [`DeactivationCount.Failed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DeactivationCountFailed.md %}) | 1.8 |  |
| [`DeactivationCount.Good`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DeactivationCountGood.md %}) | 1.8 |  |
| [`DeactivationCount.Remaining`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DeactivationCountRemaining.md %}) | 1.8 |  |
| [`DeactivationCount.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DeactivationCountTarget.md %}) | 1.8 |  |

