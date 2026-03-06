---
title: "PowerState"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 232
layout: default
---

# PowerState

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

indication of the status of the source of energy for an entity to allow it to perform its intended function or the state of an enabling signal providing permission for the entity to perform its functions.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/PowerStateEnum.md %}"><code>PowerStateEnum</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`PowerState.Control`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PowerStateControl.md %}) | 1.1 |  |
| [`PowerState.Line`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PowerStateLine.md %}) | 1.1 |  |

