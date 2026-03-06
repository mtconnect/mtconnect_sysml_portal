---
title: "ChuckInterlock"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 43
layout: default
---

# ChuckInterlock

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

state of an interlock function or control logic state intended to prevent the associated [`Chuck`]({% link model/DeviceInformationModel/Components/ComponentTypes/Chuck.md %}) component from being operated.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/ChuckInterlockEnum.md %}"><code>ChuckInterlockEnum</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ChuckInterlock.ManualUnclamp`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ChuckInterlockManualUnclamp.md %}) | 1.3 |  |

