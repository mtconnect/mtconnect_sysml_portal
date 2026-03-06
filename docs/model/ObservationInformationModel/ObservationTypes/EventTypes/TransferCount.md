---
title: "TransferCount"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 312
layout: default
---

# TransferCount

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

accumulation of the number of times an operation has attempted to, or is planned to attempt to, transfer materials, parts, or other items from one location to another.

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
| [`TransferCount.Aborted`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/TransferCountAborted.md %}) | 1.8 |  |
| [`TransferCount.All`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/TransferCountAll.md %}) | 1.8 |  |
| [`TransferCount.Bad`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/TransferCountBad.md %}) | 1.8 |  |
| [`TransferCount.Complete`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/TransferCountComplete.md %}) | 1.8 |  |
| [`TransferCount.Failed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/TransferCountFailed.md %}) | 1.8 |  |
| [`TransferCount.Good`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/TransferCountGood.md %}) | 1.8 |  |
| [`TransferCount.Remaining`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/TransferCountRemaining.md %}) | 1.8 |  |
| [`TransferCount.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/TransferCountTarget.md %}) | 1.8 |  |

