---
title: "CuttingToolDefinition"
parent: "Cutting Tool Package"
grand_parent: "Asset Information Model Package"
nav_order: 9
layout: default
---

# CuttingToolDefinition
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

detailed structure of the cutting tool which is static during its lifecycle. <em>ISO 13399</em>.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>format</code></td><td><a href="{% link model/Profile/DataTypes/FormatTypeEnum.md %}"><code>FormatTypeEnum</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

identifies the expected representation of the enclosed data. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

text of the [`CuttingToolDefinition`]({% link model/AssetInformationModel/CuttingTool/CuttingToolDefinition.md %}) in format defined by [`CuttingToolDefinition`]({% link model/AssetInformationModel/CuttingTool/CuttingToolDefinition.md %})::`format`. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>isCuttingToolDefinitionOf</code></s></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingTool.md %}"><code>CuttingTool</code></a></td><td>1.2</td><td>1.3</td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isCuttingToolDefinitionOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolArchetype.md %}"><code>CuttingToolArchetype</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
