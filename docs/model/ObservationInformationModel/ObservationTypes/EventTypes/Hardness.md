---
title: "Hardness"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 123
layout: default
---

# Hardness

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

hardness of a material.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><code>float</code></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Hardness.Brinell`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardnessBrinell.md %}) | 1.4 |  |
| [`Hardness.Leeb`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardnessLeeb.md %}) | 1.4 |  |
| [`Hardness.Mohs`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardnessMohs.md %}) | 1.4 |  |
| [`Hardness.Rockwell`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardnessRockwell.md %}) | 1.4 |  |
| [`Hardness.Shore`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardnessShore.md %}) | 1.4 |  |
| [`Hardness.Vickers`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardnessVickers.md %}) | 1.4 |  |

