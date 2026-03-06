---
title: "Direction"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 97
layout: default
---

# Direction

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

direction of motion.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><s><code>result</code></s></td><td><a href="{% link model/Profile/DataTypes/DirectionEnum.md %}"><code>DirectionEnum</code></a></td><td>1.0</td><td>1.4</td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Direction.Linear`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DirectionLinear.md %}) | 1.2 |  |
| [`Direction.Rotary`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DirectionRotary.md %}) | 1.2 |  |

