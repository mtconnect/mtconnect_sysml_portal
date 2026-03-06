---
title: "ProcessAggregateId"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 236
layout: default
---

# ProcessAggregateId

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

identifier given to link the individual occurrence to a group of related occurrences, such as a process step in a process plan.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ProcessAggregateId.OrderNumber`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessAggregateIdOrderNumber.md %}) | 1.7 |  |
| [`ProcessAggregateId.ProcessPlan`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessAggregateIdProcessPlan.md %}) | 1.7 |  |
| [`ProcessAggregateId.ProcessStep`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessAggregateIdProcessStep.md %}) | 1.7 |  |

