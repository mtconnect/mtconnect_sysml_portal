---
title: "ToolOffset"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 308
layout: default
---

# ToolOffset

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

reference to the tool offset variables applied to the active cutting tool.

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
<tr><td><s><code>subType</code></s></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.4</td><td>1.5</td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ToolOffset.Length`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ToolOffsetLength.md %}) | 1.4 |  |
| [`ToolOffset.Radial`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ToolOffsetRadial.md %}) | 1.4 |  |

