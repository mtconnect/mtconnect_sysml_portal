---
title: "ProcessOccurrence"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 69
layout: default
---

# ProcessOccurrence

**Supertype:** `Process`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`Process`]({% link model/DeviceInformationModel/Components/ComponentTypes/Process.md %}) that takes place at a specific place and time, such as a specific instance of part-milling occurring at a specific timestamp.

### Description

[`ProcessOccurrenceId`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessOccurrenceId.md %}) **MUST** be defined for [`ProcessOccurrence`]({% link model/DeviceInformationModel/Components/ComponentTypes/ProcessOccurrence.md %}).

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesProcessOccurrenceId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessOccurrenceId.md %}"><code>ProcessOccurrenceId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesProcessAggregateId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessAggregateId.md %}"><code>ProcessAggregateId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesProcessTime</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessTime.md %}"><code>ProcessTime</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesProcessKindId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessKindId.md %}"><code>ProcessKindId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesUser</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/User.md %}"><code>User</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesProgram</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/Program.md %}"><code>Program</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPartUniqueId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartUniqueId.md %}"><code>PartUniqueId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
