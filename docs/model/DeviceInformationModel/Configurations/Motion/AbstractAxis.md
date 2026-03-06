---
title: "AbstractAxis"
parent: "Motion Package"
grand_parent: "Configurations Package"
nav_order: 1
layout: default
---

# AbstractAxis
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |  2.7 (Previous: [2.6](https://model.mtconnect.org/versions/2.6/abstractaxis)) |

axis along or around which the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) moves relative to a coordinate system.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isAxisOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Motion/Motion.md %}"><code>Motion</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Axis`]({% link model/DeviceInformationModel/Configurations/Motion/Axis.md %}) | 1.7 |  |
| [`AxisDataSet`]({% link model/DeviceInformationModel/Configurations/Motion/AxisDataSet.md %}) | 2.5 |  |

