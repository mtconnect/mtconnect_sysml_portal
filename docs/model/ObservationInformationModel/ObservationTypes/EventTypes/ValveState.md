---
title: "ValveState"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 337
layout: default
---

# ValveState

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

state of a valve is one of open, closed, or transitioning between the states.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/ValveStateEnum.md %}"><code>ValveStateEnum</code></a></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.8</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ValveState.Actual`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ValveStateActual.md %}) | 1.8 |  |
| [`ValveState.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ValveStateProgrammed.md %}) | 1.8 |  |

