---
title: "CuttingItem"
parent: "Cutting Item Package"
grand_parent: "Cutting Tool Package"
nav_order: 2
layout: default
---

# CuttingItem
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

part of of the tool that physically removes the material from the workpiece by shear deformation.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>Description</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

free-form description of the cutting item. 

</td>
</tr>
<tr><td><code>grade</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

material composition for this cutting item. 

</td>
</tr>
<tr><td><code>indices</code></td><td><code>string</code></td><td>1.2</td><td></td><td>1..*</td>
<td markdown="block">

number or numbers representing the individual cutting item or items on the tool.

Indices **SHOULD** start numbering with the inserts or [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}) furthest from the gauge line and increasing in value as the items get closer to the gauge line. Items at the same distance **MAY** be arbitrarily numbered.

> Note: In *XML*, the representation **MUST** be a single number ("1") or a comma separated set of individual elements ("1,2,3,4"), or as a inclusive range of values as in ("1-10") or any combination of ranges and numbers as in "1-4,6-10,22". There **MUST NOT** be spaces or non-integer values in the text representation. 

</td>
</tr>
<tr><td><code>itemId</code></td><td><code>ID</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

manufacturer identifier of this cutting item. 

</td>
</tr>
<tr><td><code>Locus</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

free form description of the location on the cutting tool.

For clarity, the words `FLUTE`, `INSERT`, and `CARTRIDGE` **SHOULD** be used to assist in noting the location of a [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}). [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %})::`Locus` **MAY** be any free form string, but **SHOULD** adhere to the following rules:

* The location numbering **SHOULD** start at the furthest [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}) and work it’s way back to the [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}) closest to the gauge line.

* Flutes **SHOULD** be identified as such using the word `FLUTE`:. For example: `FLUTE`: 1, `INSERT`: 2 - would indicate the first flute and the second furthest insert from the end of the tool on that flute.

* Other designations such as `CARTRIDGE` **MAY** be included, but should be identified using upper case and followed by a colon (:). 

</td>
</tr>
<tr><td><code>manufacturers</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

manufacturers of the cutting item.

This will reference the tool item and adaptive items specifically. The cutting items
manufacturers’ will be a property of [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}).

> Note: In *XML*, the representation **MUST** be a comma(,) delimited list of manufacturer names. See *Section CuttingItem Schema Diagrams*. 

</td>
</tr>
<tr><td><code>ProgramToolGroup</code></td><td><code>string</code></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

tool group this item is assigned in the part program. 

</td>
</tr>
<tr><td><code>isCuttingItemOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

  (through `CuttingItems`)

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasCutterStatus</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/Status.md %}"><code>Status</code></a></td><td>1.2</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasItemLife</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingItem/ItemLife.md %}"><code>ItemLife</code></a></td><td>1.2</td><td></td><td>0..3</td>
<td markdown="block">

The tool life measured in tool wear. 

</td>
</tr>
<tr><td><code>hasMeasurement</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ToolingMeasurement.md %}"><code>ToolingMeasurement</code></a></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

A collection of measurements relating to this cutting item. 

</td>
</tr>

</tbody></table>
