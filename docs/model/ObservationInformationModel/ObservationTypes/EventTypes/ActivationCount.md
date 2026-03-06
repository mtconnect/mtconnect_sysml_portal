---
title: "ActivationCount"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 1
layout: default
---

# ActivationCount

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

accumulation of the number of times a function has attempted to, or is planned to attempt to, activate or be performed.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.8</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.8</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `ALL`.

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
| [`ActivationCount.Aborted`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ActivationCountAborted.md %}) | 1.8 |  |
| [`ActivationCount.All`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ActivationCountAll.md %}) | 1.8 |  |
| [`ActivationCount.Bad`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ActivationCountBad.md %}) | 1.8 |  |
| [`ActivationCount.Complete`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ActivationCountComplete.md %}) | 1.8 |  |
| [`ActivationCount.Failed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ActivationCountFailed.md %}) | 1.8 |  |
| [`ActivationCount.Good`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ActivationCountGood.md %}) | 1.8 |  |
| [`ActivationCount.Remaining`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ActivationCountRemaining.md %}) | 1.8 |  |
| [`ActivationCount.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ActivationCountTarget.md %}) | 1.8 |  |

