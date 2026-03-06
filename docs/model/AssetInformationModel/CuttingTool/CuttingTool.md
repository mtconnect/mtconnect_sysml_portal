---
title: "CuttingTool"
parent: "Cutting Tool Package"
grand_parent: "Asset Information Model Package"
nav_order: 5
layout: default
---

# CuttingTool

**Supertype:** `Asset`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

[`Asset`]({% link model/AssetInformationModel/Asset.md %}) that physically removes the material from the workpiece by shear deformation.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>serialNumber</code></td><td><code>string</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

unique identifier for this assembly. 

</td>
</tr>
<tr><td><code>toolId</code></td><td><code>string</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

identifier for a class of cutting tools. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasCuttingToolLifeCycle</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasCuttingToolArchetypeReference</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolArchetypeReference.md %}"><code>CuttingToolArchetypeReference</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><s><code>hasCuttingToolDefinition</code></s></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolDefinition.md %}"><code>CuttingToolDefinition</code></a></td><td>1.2</td><td>1.3</td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
