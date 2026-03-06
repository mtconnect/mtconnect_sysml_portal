---
title: "WaitState"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 341
layout: default
---

# WaitState

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |   |

indication of the reason that [`Execution`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Execution.md %}) is reporting a value of `WAIT`.

When [`Execution`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Execution.md %})::`result` is not `WAIT`, [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %})::`isUnavailable` of [`WaitState`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/WaitState.md %}) **MUST** be `true`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/WaitStateEnum.md %}"><code>WaitStateEnum</code></a></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
