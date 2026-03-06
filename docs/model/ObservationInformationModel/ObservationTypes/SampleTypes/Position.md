---
title: "Position"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 152
layout: default
---

# Position

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

point along an axis in a <span class="hoverterm">cartesian coordinate system<span class="definition" data-term="cartesian coordinate system">3D orthogonal coordinate system <em>ISO/IEC 19794-5:2011(en</em>.</span></span>.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Position.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PositionActual.md %}) | 1.0 |  |
| [`Position.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PositionCommanded.md %}) | 1.0 |  |
| [`Position.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PositionProgrammed.md %}) | 1.4 |  |
| [`Position.Target`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PositionTarget.md %}) | 1.1 |  |

