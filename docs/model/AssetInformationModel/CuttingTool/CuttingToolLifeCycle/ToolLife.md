---
title: "ToolLife"
parent: "Cutting Tool Life Cycle Package"
grand_parent: "Cutting Tool Package"
nav_order: 14
layout: default
---

# ToolLife
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

cutting tool life as related to the assembly.

### Description

[`ToolLife`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ToolLife.md %}) **MUST** be defined only for the [`CuttingToolLifeCycle`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}) of [`CuttingTool`]({% link model/AssetInformationModel/CuttingTool/CuttingTool.md %}) and **MUST NOT** be defined for the [`CuttingToolLifeCycle`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}) of [`CuttingToolArchetype`]({% link model/AssetInformationModel/CuttingTool/CuttingToolArchetype.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>countDirection</code></td><td><a href="{% link model/Profile/DataTypes/CountDirectionTypeEnum.md %}"><code>CountDirectionTypeEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

indicates if the tool life counts from zero to maximum or maximum to zero. 

</td>
</tr>
<tr><td><code>initial</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

initial life of the tool when it is new. 

</td>
</tr>
<tr><td><code>limit</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

end of life limit for the tool. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/ToolLifeEnum.md %}"><code>ToolLifeEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

type of tool life being accumulated. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>warning</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

point at which a tool life warning will be raised. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>float</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

value of [`ToolLife`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ToolLife.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isToolLifeOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>0..3</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
