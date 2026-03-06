---
title: "PartCount"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 196
layout: default
---

# PartCount

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

aggregate count of parts.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><code>integer</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `ALL`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`PartCount.Aborted`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCountAborted.md %}) | 1.8 |  |
| [`PartCount.All`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCountAll.md %}) | 1.0 |  |
| [`PartCount.Bad`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCountBad.md %}) | 1.0 |  |
| [`PartCount.Complete`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCountComplete.md %}) | 1.8 |  |
| [`PartCount.Failed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCountFailed.md %}) | 1.8 |  |
| [`PartCount.Good`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCountGood.md %}) | 1.0 |  |
| [`PartCount.Remaining`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCountRemaining.md %}) | 1.3 |  |
| [`PartCount.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCountTarget.md %}) | 1.3 |  |

