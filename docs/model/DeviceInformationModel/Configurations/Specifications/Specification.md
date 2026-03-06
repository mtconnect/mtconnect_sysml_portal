---
title: "Specification"
parent: "Specifications Package"
grand_parent: "Configurations Package"
nav_order: 23
layout: default
---

# Specification
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

design characteristics for a piece of equipment.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/DataItemTypeEnum.md %}"><code>DataItemTypeEnum</code></a></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type`. See `DataItem Types`. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`subType`. See *Section DataItem*. 

</td>
</tr>
<tr><td><code>dataItemIdRef</code></td><td><code>ID</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

reference to the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`id` associated with this entity. 

</td>
</tr>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`units`. See *Section DataItem*. 

</td>
</tr>
<tr><td><code>compositionIdRef</code></td><td><code>ID</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

reference to the [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %})::`id` associated with this entity. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

[`Specification`]({% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %})::`name` provides additional meaning and differentiates between [`Specification`]({% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %}) entities. 

</td>
</tr>
<tr><td><code>coordinateSystemIdRef</code></td><td><code>ID</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

references the [`CoordinateSystem`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/CoordinateSystem.md %}) for geometric [`Specification`]({% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %}) elements. 

</td>
</tr>
<tr><td><code>id</code></td><td><code>ID</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

unique identifier for this [`Specification`]({% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %}). 

</td>
</tr>
<tr><td><code>originator</code></td><td><a href="{% link model/Profile/DataTypes/OriginatorEnum.md %}"><code>OriginatorEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

reference to the creator of the [`Specification`]({% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasMaximum</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/Maximum.md %}"><code>Maximum</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasUpperLimit</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/UpperLimit.md %}"><code>UpperLimit</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasLowerWarning</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/LowerWarning.md %}"><code>LowerWarning</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasLowerLimit</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/LowerLimit.md %}"><code>LowerLimit</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasUpperWarning</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/UpperWarning.md %}"><code>UpperWarning</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasNominal</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/Nominal.md %}"><code>Nominal</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasMinimum</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/Minimum.md %}"><code>Minimum</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isSpecificationOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Configuration.md %}"><code>Configuration</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ProcessSpecification`]({% link model/DeviceInformationModel/Configurations/Specifications/ProcessSpecification.md %}) | 1.7 |  |

