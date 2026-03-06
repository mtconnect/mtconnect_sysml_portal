---
title: "ProcessSpindleSpeed"
parent: "Cutting Tool Life Cycle Package"
grand_parent: "Cutting Tool Package"
nav_order: 9
layout: default
---

# ProcessSpindleSpeed
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

constrained process spindle speed for the tool in revolutions/minute.

The [`ProcessSpindleSpeed`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessSpindleSpeed.md %})::`value` **MAY** contain the nominal process target spindle speed if available. If [`ProcessSpindleSpeed`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessSpindleSpeed.md %}) is provided, at least one value of [`ProcessSpindleSpeed`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessSpindleSpeed.md %})::`maximum`, [`ProcessSpindleSpeed`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessSpindleSpeed.md %})::`nominal`, or [`ProcessSpindleSpeed`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessSpindleSpeed.md %})::`minimum` **MUST** be specified.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>maximum</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

upper bound for the tool’s target spindle speed. 

</td>
</tr>
<tr><td><code>minimum</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

lower bound for the tools spindle speed. 

</td>
</tr>
<tr><td><code>nominal</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

nominal speed the tool is designed to operate at. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isProcessSpindleSpeedOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
