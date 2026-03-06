---
title: "Orientation"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 127
layout: default
---

# Orientation

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

angular position of a plane or vector relative to a <span class="hoverterm">cartesian coordinate system<span class="definition" data-term="cartesian coordinate system">3D orthogonal coordinate system <em>ISO/IEC 19794-5:2011(en</em>.</span></span>

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
<tr><td><code>result</code></td><td><code>float3d</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Orientation.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/OrientationActual.md %}) | 1.6 |  |
| [`Orientation.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/OrientationCommanded.md %}) | 1.6 |  |

