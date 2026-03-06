---
title: "AbstractOrigin"
parent: "CoordinateSystems Package"
grand_parent: "Configurations Package"
nav_order: 1
layout: default
---

# AbstractOrigin
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |  2.7 (Previous: [2.6](https://model.mtconnect.org/versions/2.6/abstractorigin)) |

coordinates of the origin position of a coordinate system.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isOriginOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/CoordinateSystem.md %}"><code>CoordinateSystem</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isOriginOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Motion/Motion.md %}"><code>Motion</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Origin`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Origin.md %}) | 1.6 |  |
| [`OriginDataSet`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/OriginDataSet.md %}) | 2.5 |  |

