---
title: "CuttingToolArchetypeReference"
parent: "Cutting Tool Package"
grand_parent: "Asset Information Model Package"
nav_order: 7
layout: default
---

# CuttingToolArchetypeReference
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

reference information about the [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` and/or the URL of the data source of [`CuttingToolArchetype`]({% link model/AssetInformationModel/CuttingTool/CuttingToolArchetype.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>source</code></td><td><code>string</code></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

*URL* of the [`CuttingToolArchetype`]({% link model/AssetInformationModel/CuttingTool/CuttingToolArchetype.md %}) <span class="hoverterm">information model<span class="definition" data-term="information model">rules, relationships, and terminology that are used to define how information is structured.</span></span>. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>ID</code></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

`assetId` of the related [`CuttingToolArchetype`]({% link model/AssetInformationModel/CuttingTool/CuttingToolArchetype.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isCuttingToolArchetypeReferenceOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingTool.md %}"><code>CuttingTool</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
