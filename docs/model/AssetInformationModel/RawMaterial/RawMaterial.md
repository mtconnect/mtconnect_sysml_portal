---
title: "RawMaterial"
parent: "Raw Material Package"
grand_parent: "Asset Information Model Package"
nav_order: 3
layout: default
---

# RawMaterial

**Supertype:** `Asset`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

[`Asset`]({% link model/AssetInformationModel/Asset.md %}) that represents <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

name of the <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>.

Examples: `Container1` and `AcrylicContainer`. 

</td>
</tr>
<tr><td><code>containerType</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

type of container holding the <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>. 

Examples: `Pallet`, `Canister`, `Cartridge`, `Tank`, `Bin`, `Roll`, and `Spool`. 

</td>
</tr>
<tr><td><code>processKind</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

ISO process type supported by this <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>. 

Examples include: `VAT_POLYMERIZATION`, `BINDER_JETTING`, `MATERIAL_EXTRUSION`, `MATERIAL_JETTING`, `SHEET_LAMINATION`, `POWDER_BED_FUSION` and `DIRECTED_ENERGY_DEPOSITION`. 

</td>
</tr>
<tr><td><code>serialNumber</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

serial number of the <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>. 

</td>
</tr>
<tr><td><code>HasMaterial</code></td><td><code>boolean</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

[`Material`]({% link model/DeviceInformationModel/Components/ComponentTypes/Material.md %}) has existing usable volume. 

</td>
</tr>
<tr><td><code>Form</code></td><td><a href="{% link model/Profile/DataTypes/FormEnum.md %}"><code>FormEnum</code></a></td><td>1.8</td><td></td><td>1</td>
<td markdown="block">

form of the <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>. 

</td>
</tr>
<tr><td><code>ManufacturingDate</code></td><td><code>datetime</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

date the <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span> was created. 

</td>
</tr>
<tr><td><code>FirstUseDate</code></td><td><code>datetime</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

date <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span> was first used. 

</td>
</tr>
<tr><td><code>LastUseDate</code></td><td><code>datetime</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

date <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span> was last used. 

</td>
</tr>
<tr><td><code>InitialVolume</code></td><td><code>CUBIC_MILLIMETER</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

amount of material initially placed in <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span> when manufactured. 

</td>
</tr>
<tr><td><code>InitialDimension</code></td><td><code>MILLIMETER</code></td><td>1.8</td><td></td><td>0..3</td>
<td markdown="block">

dimension of material initially placed in <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span> when manufactured. 

</td>
</tr>
<tr><td><code>InitialQuantity</code></td><td><code>integer</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

quantity of material initially placed in <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span> when manufactured. 

</td>
</tr>
<tr><td><code>CurrentVolume</code></td><td><code>CUBIC_MILLIMETER</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

amount of material currently in <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>. 

</td>
</tr>
<tr><td><code>CurrentDimension</code></td><td><code>MILLIMETER</code></td><td>1.8</td><td></td><td>0..3</td>
<td markdown="block">

dimension of material currently in <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>. 

</td>
</tr>
<tr><td><code>CurrentQuantity</code></td><td><code>integer</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

quantity of material currently in <span class="hoverterm">raw material<span class="definition" data-term="raw material">crude or processed material that can be converted by manufacture, processing, or combination into a new and useful product.</span></span>. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasMaterial</code></td><td><a href="{% link model/AssetInformationModel/RawMaterial/Material.md %}"><code>Material</code></a></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
