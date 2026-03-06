---
title: "AmperageAC"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 11
layout: default
---

# AmperageAC

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

electrical current that reverses direction at regular short intervals.

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
| [`AmperageAC.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AmperageACActual.md %}) | 1.6 |  |
| [`AmperageAC.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AmperageACCommanded.md %}) | 1.6 |  |
| [`AmperageAC.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AmperageACProgrammed.md %}) | 1.6 |  |

