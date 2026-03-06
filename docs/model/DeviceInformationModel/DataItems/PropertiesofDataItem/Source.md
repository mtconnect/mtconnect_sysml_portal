---
title: "Source"
parent: "Properties of DataItem Package"
grand_parent: "DataItems Package"
nav_order: 13
layout: default
---

# Source
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

identifies the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}), [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}), or [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) from which a measured value originates.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>componentId</code></td><td><code>ID</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

identifier of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that represents the physical part of a piece of equipment where the data represented by the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) originated. 

</td>
</tr>
<tr><td><code>compositionId</code></td><td><code>ID</code></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

identifier of the [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) that represents the physical part of a piece of equipment where the data represented by the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) originated. 

</td>
</tr>
<tr><td><code>dataItemId</code></td><td><code>ID</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

identifier of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) that represents the originally measured value of the data referenced by this [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}). 

</td>
</tr>
<tr><td><code>value</code></td><td><code>string</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

identifier of the source entity. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isSourceOf</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/DataItem.md %}"><code>DataItem</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
