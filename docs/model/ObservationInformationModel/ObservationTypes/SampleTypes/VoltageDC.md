---
title: "VoltageDC"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 209
layout: default
---

# VoltageDC

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

electrical potential between two points in an electrical circuit in which the current is unidirectional.

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
| [`VoltageDC.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageDCActual.md %}) | 1.6 |  |
| [`VoltageDC.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageDCCommanded.md %}) | 1.6 |  |
| [`VoltageDC.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageDCProgrammed.md %}) | 1.6 |  |

