---
title: "Material"
parent: "Raw Material Package"
grand_parent: "Asset Information Model Package"
nav_order: 1
layout: default
---

# Material
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

material used as the [`RawMaterial`]({% link model/AssetInformationModel/RawMaterial/RawMaterial.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>id</code></td><td><code>ID</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

unique identifier for the material. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

name of the material. 

Examples: `ULTM9085`, `ABS`, `4140`. 

</td>
</tr>
<tr><td><code>type</code></td><td><code>string</code></td><td>1.8</td><td></td><td>1</td>
<td markdown="block">

type of material. 

Examples: `Metal`, `Polymer`, `Wood`, `4140`, `Recycled`, `Prestine` and `Used`. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>Lot</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

manufacturer's lot code of the material. 

</td>
</tr>
<tr><td><code>Manufacturer</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

name of the material manufacturer. 

</td>
</tr>
<tr><td><code>ManufacturingDate</code></td><td><code>datetime</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

manufacturing date of the material from the material manufacturer. 

</td>
</tr>
<tr><td><code>ManufacturingCode</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

lot code of the raw feed stock for the material, from the feed stock manufacturer. 

</td>
</tr>
<tr><td><code>MaterialCode</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

*ASTM* standard code that the material complies with. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isMaterialOf</code></td><td><a href="{% link model/AssetInformationModel/RawMaterial/RawMaterial.md %}"><code>RawMaterial</code></a></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
