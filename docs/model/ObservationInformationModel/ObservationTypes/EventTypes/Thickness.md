---
title: "Thickness"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 298
layout: default
---

# Thickness

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.4 |  |   |

dimension between two surfaces of an object, usually the dimension of smallest measure, for example an additive layer, or a depth of cut.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>2.4</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `ACTUAL`.

</td>
</tr>
<tr><td><code>result</code></td><td><code>float</code></td><td>2.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Thickness.Actual`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ThicknessActual.md %}) | 2.4 |  |
| [`Thickness.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ThicknessCommanded.md %}) | 2.4 |  |
| [`Thickness.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ThicknessProgrammed.md %}) | 2.4 |  |
| [`Thickness.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ThicknessTarget.md %}) | 2.4 |  |

