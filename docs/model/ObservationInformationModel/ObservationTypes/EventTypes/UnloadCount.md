---
title: "UnloadCount"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 324
layout: default
---

# UnloadCount

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

accumulation of the number of times an operation has attempted to, or is planned to attempt to, unload materials, parts, or other items.

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
| [`UnloadCount.Aborted`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UnloadCountAborted.md %}) | 1.8 |  |
| [`UnloadCount.All`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UnloadCountAll.md %}) | 1.8 |  |
| [`UnloadCount.Bad`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UnloadCountBad.md %}) | 1.8 |  |
| [`UnloadCount.Complete`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UnloadCountComplete.md %}) | 1.8 |  |
| [`UnloadCount.Failed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UnloadCountFailed.md %}) | 1.8 |  |
| [`UnloadCount.Good`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UnloadCountGood.md %}) | 1.8 |  |
| [`UnloadCount.Remaining`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UnloadCountRemaining.md %}) | 1.8 |  |
| [`UnloadCount.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UnloadCountTarget.md %}) | 1.8 |  |

