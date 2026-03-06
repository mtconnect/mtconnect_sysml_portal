---
title: "Description"
parent: "Components Package"
grand_parent: "Device Information Model Package"
nav_order: 10
layout: default
---

# Description
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

descriptive content.

### Description

> Note 1 to entry: See *Figure Component Example* for an example.

> Note 2 to entry: See component-example for the *XML* representation of the same example.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>manufacturer</code></td><td><code>string</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

name of the manufacturer of the physical or logical part of a piece of equipment represented by this element. 

</td>
</tr>
<tr><td><code>model</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

model description of the physical part or logical function of a piece of equipment represented by this element. 

</td>
</tr>
<tr><td><code>serialNumber</code></td><td><code>string</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

serial number associated with a piece of equipment. 

</td>
</tr>
<tr><td><code>station</code></td><td><code>string</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

identifier where a manufacturing function takes place. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>string</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

description of the element. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isDescriptionOf</code></td><td><a href="{% link model/DeviceInformationModel/Components/Component.md %}"><code>Component</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isDescriptionOf</code></td><td><a href="{% link model/DeviceInformationModel/Compositions/Composition.md %}"><code>Composition</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
