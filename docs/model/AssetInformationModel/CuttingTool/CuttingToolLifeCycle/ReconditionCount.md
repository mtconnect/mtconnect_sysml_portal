---
title: "ReconditionCount"
parent: "Cutting Tool Life Cycle Package"
grand_parent: "Cutting Tool Package"
nav_order: 11
layout: default
---

# ReconditionCount
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

number of times the cutter has been reconditioned.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>maximumCount</code></td><td><code>integer</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

maximum number of times the tool may be reconditioned. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>integer</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

[`ReconditionCount`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ReconditionCount.md %})::`value` **MUST** be provided for `CuttingTool::CuttingToolLifeCycle` and **MUST NOT** be provided for the `CuttingToolArchetype::CuttingToolLifeCycle`. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isReconditionCountOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
