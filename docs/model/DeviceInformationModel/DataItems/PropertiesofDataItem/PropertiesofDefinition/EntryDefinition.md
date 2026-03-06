---
title: "EntryDefinition"
parent: "Properties of Definition Package"
grand_parent: "Properties of DataItem Package"
nav_order: 3
layout: default
---

# EntryDefinition
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

semantic definition of an [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>key</code></td><td><code>string</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

unique identification of the [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) in the [`Definition`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Definition.md %}). 

The description applies to all [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> having this [`EntryDefinition`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/EntryDefinition.md %})::`key`. 

</td>
</tr>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`units`. See *Section Value Properties of DataItem*. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/DataItemTypeEnum.md %}"><code>DataItemTypeEnum</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type`. See `DataItem Types`. 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

same as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`subType`. See *Section DataItem*. 

</td>
</tr>
<tr><td><code>keyType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemTypeEnum.md %}"><code>DataItemTypeEnum</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

[`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type` that defines the meaning of [`EntryDefinition`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/EntryDefinition.md %})::`key`. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasCellDefinition</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/CellDefinition.md %}"><code>CellDefinition</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isEntryDefinitionOf</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Definition.md %}"><code>Definition</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
