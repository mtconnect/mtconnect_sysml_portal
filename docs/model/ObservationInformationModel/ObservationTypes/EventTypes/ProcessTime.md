---
title: "ProcessTime"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 250
layout: default
---

# ProcessTime

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |   |

time and date associated with an activity or event.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ProcessTime.Complete`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessTimeComplete.md %}) | 1.5 |  |
| [`ProcessTime.Start`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessTimeStart.md %}) | 1.5 |  |
| [`ProcessTime.TargetCompletion`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessTimeTargetCompletion.md %}) | 1.5 |  |

