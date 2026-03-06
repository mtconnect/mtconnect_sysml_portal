---
title: "AbstractScale"
parent: "SolidModel Package"
grand_parent: "Configurations Package"
nav_order: 1
layout: default
---

# AbstractScale
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |  2.7 (Previous: [2.6](https://model.mtconnect.org/versions/2.6/abstractscale)) |

either a single multiplier applied to all three dimensions or a three space multiplier given in the X, Y, and Z dimensions in the coordinate system used for the [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}).

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isScaleOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}"><code>SolidModel</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Scale`]({% link model/DeviceInformationModel/Configurations/SolidModel/Scale.md %}) | 1.7 |  |
| [`ScaleDataSet`]({% link model/DeviceInformationModel/Configurations/SolidModel/ScaleDataSet.md %}) | 2.5 |  |

