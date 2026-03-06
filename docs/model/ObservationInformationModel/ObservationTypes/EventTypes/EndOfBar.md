---
title: "EndOfBar"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 102
layout: default
---

# EndOfBar

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

indication of whether the end of a piece of bar stock being feed by a bar feeder has been reached.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/EndOfBarEnum.md %}"><code>EndOfBarEnum</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `PRIMARY`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`EndOfBar.Auxiliary`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EndOfBarAuxiliary.md %}) | 1.3 |  |
| [`EndOfBar.Primary`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EndOfBarPrimary.md %}) | 1.3 |  |

