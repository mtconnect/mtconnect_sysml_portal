---
title: "VoltageAC"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 205
layout: default
---

# VoltageAC

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

electrical potential between two points in an electrical circuit in which the current periodically reverses direction.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`VoltageAC.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageACActual.md %}) | 1.6 |  |
| [`VoltageAC.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageACCommanded.md %}) | 1.6 |  |
| [`VoltageAC.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageACProgrammed.md %}) | 1.6 |  |

