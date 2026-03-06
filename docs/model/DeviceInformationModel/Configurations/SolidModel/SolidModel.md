---
title: "SolidModel"
parent: "SolidModel Package"
grand_parent: "Configurations Package"
nav_order: 5
layout: default
---

# SolidModel
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

references to a file with the three-dimensional geometry of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) or [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}).

### Description

The geometry **MAY** have a transformation and a scale to position the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) with respect to the other [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})s. A geometry file can contain a set of assembled items, in this case, the [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}) references the [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %})::`id` of the assembly model file and the specific item within that file.

The [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}) **MAY** provide a translation, rotation, and scale to correctly place it relative to the other geometries in the machine. If the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) can move and has a [`Motion`]({% link model/DeviceInformationModel/Configurations/Motion/Motion.md %}) [`Configuration`]({% link model/DeviceInformationModel/Configurations/Configuration.md %}), the [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}) will move when the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) or [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) moves.

Either an [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %})::`href` or a [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %})::`modelIdRef` and an [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %})::`itemRef` **MUST** be specified.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>id</code></td><td><code>ID</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

unique identifier for this element. 

</td>
</tr>
<tr><td><code>solidModelIdRef</code></td><td><code>ID</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

associated model file if an item reference is used. 

</td>
</tr>
<tr><td><code>href</code></td><td><code>string</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

*URL* giving the location of the [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}). 

If not present, the model referenced in the [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %})::`solidModelIdRef` is used.

[`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %})::`href` is of type `xlink:href` from the W3C XLink specification. 

</td>
</tr>
<tr><td><code>itemRef</code></td><td><code>string</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

reference to the item within the model within the related geometry. A [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %})::`solidModelIdRef` **MUST** be given. 

> Note: `Item` defined in ASME Y14.100 - A nonspecific term used to denote any unit or product, including materials, parts, assemblies, equipment, accessories, and computer software. 

</td>
</tr>
<tr><td><code>mediaType</code></td><td><a href="{% link model/Profile/DataTypes/MediaTypeEnum.md %}"><code>MediaTypeEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

format of the referenced document. 

</td>
</tr>
<tr><td><code>coordinateSystemIdRef</code></td><td><code>ID</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

reference to the coordinate system for this [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}). 

</td>
</tr>
<tr><td><code>nativeUnits</code></td><td><a href="{% link model/Profile/DataTypes/NativeUnitEnum.md %}"><code>NativeUnitEnum</code></a></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`nativeUnits`. See *Section DataItem*. 

</td>
</tr>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`units`. See *Section DataItem*. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasTransformation</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/Transformation.md %}"><code>Transformation</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasScale</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/SolidModel/AbstractScale.md %}"><code>AbstractScale</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isSolidModelOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Configuration.md %}"><code>Configuration</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
