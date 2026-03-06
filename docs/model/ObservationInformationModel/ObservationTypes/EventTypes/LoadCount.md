---
title: "LoadCount"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 152
layout: default
---

# LoadCount

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

accumulation of the number of times an operation has attempted to, or is planned to attempt to, load materials, parts, or other items.

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
| [`LoadCount.Aborted`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LoadCountAborted.md %}) | 1.8 |  |
| [`LoadCount.All`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LoadCountAll.md %}) | 1.8 |  |
| [`LoadCount.Bad`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LoadCountBad.md %}) | 1.8 |  |
| [`LoadCount.Complete`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LoadCountComplete.md %}) | 1.8 |  |
| [`LoadCount.Failed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LoadCountFailed.md %}) | 1.8 |  |
| [`LoadCount.Good`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LoadCountGood.md %}) | 1.8 |  |
| [`LoadCount.Remaining`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LoadCountRemaining.md %}) | 1.8 |  |
| [`LoadCount.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LoadCountTarget.md %}) | 1.8 |  |

