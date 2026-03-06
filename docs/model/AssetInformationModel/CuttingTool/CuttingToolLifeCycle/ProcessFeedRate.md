---
title: "ProcessFeedRate"
parent: "Cutting Tool Life Cycle Package"
grand_parent: "Cutting Tool Package"
nav_order: 6
layout: default
---

# ProcessFeedRate
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

constrained process feed rate for the tool in mm/s.

The [`ProcessFeedRate`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessFeedRate.md %})::`value` **MAY** contain the nominal process target feed rate if available. If [`ProcessFeedRate`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessFeedRate.md %}) is provided, at least one value of [`ProcessFeedRate`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessFeedRate.md %})::`maximum`, [`ProcessFeedRate`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessFeedRate.md %})::`nominal`, or [`ProcessFeedRate`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessFeedRate.md %})::`minimum` **MUST** be specified.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>maximum</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

upper bound for the tool’s process target feedrate. 

</td>
</tr>
<tr><td><code>minimum</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

lower bound for the tool's feedrate. 

</td>
</tr>
<tr><td><code>nominal</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

nominal feedrate the tool is designed to operate at. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isProcessFeedRateOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
