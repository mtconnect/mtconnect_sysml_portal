---
title: "Composition"
parent: "Compositions Package"
grand_parent: "Device Information Model Package"
nav_order: 1
layout: default
---

# Composition
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

functional part of a piece of equipment contained within a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

### Description

[`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) **MUST NOT** have child [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}), [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}), or `DataItems` elements.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>id</code></td><td><code>ID</code></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

unique identifier for the [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) element. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/CompositionTypeEnum.md %}"><code>CompositionTypeEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

type of [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}). The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

name of the [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) element. 

</td>
</tr>
<tr><td><code>uuid</code></td><td><code>UUID</code></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

universally unique identifier for the [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasDescription</code></td><td><a href="{% link model/DeviceInformationModel/Components/Description.md %}"><code>Description</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasConfiguration</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Configuration.md %}"><code>Configuration</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isCompositionOf</code></td><td><a href="{% link model/DeviceInformationModel/Components/Component.md %}"><code>Component</code></a></td><td>1.4</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
