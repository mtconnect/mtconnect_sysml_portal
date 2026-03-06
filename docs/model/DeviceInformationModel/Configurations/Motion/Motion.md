---
title: "Motion"
parent: "Motion Package"
grand_parent: "Configurations Package"
nav_order: 5
layout: default
---

# Motion
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

movement of the component relative to a coordinate system. 

### Description

[`Motion`]({% link model/DeviceInformationModel/Configurations/Motion/Motion.md %}) specifies the kinematic chain of the `component` entities.

At most only one of [`Origin`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Origin.md %}) or [`Transformation`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Transformation.md %}) **MUST** be defined for a [`Motion`]({% link model/DeviceInformationModel/Configurations/Motion/Motion.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>actuation</code></td><td><a href="{% link model/Profile/DataTypes/MotionActuationTypeEnum.md %}"><code>MotionActuationTypeEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

describes if this component is actuated directly or indirectly as a result of other motion. 

</td>
</tr>
<tr><td><code>coordinateSystemIdRef</code></td><td><code>ID</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

coordinate system within which the kinematic motion occurs. 

</td>
</tr>
<tr><td><code>id</code></td><td><code>ID</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

unique identifier for this element. 

</td>
</tr>
<tr><td><code>parentIdRef</code></td><td><code>ID</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

pointer to the [`Motion`]({% link model/DeviceInformationModel/Configurations/Motion/Motion.md %})::`id`.

The kinematic chain connects all components using the parent relations. All motion is connected to the motion of the parent. The first node in the chain will not have a parent. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/MotionTypeEnum.md %}"><code>MotionTypeEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

type of motion. The `type` **MUST** be specified

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasAxis</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Motion/AbstractAxis.md %}"><code>AbstractAxis</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasOrigin</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/AbstractOrigin.md %}"><code>AbstractOrigin</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasTransformation</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/Transformation.md %}"><code>Transformation</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isMotionOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Configuration.md %}"><code>Configuration</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
