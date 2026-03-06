---
title: "CuttingToolLifeCycle"
parent: "Cutting Tool Life Cycle Package"
grand_parent: "Cutting Tool Package"
nav_order: 2
layout: default
---

# CuttingToolLifeCycle
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

data regarding the application or use of the tool.

This data is provided by various pieces of equipment (i.e. machine tool, presetter) and statistical process control applications. Life cycle data will not remain static, but will change periodically when a tool is used or measured.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>ConnectionCodeMachineSide</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

identifier for the capability to connect any component of the cutting tool together, except Assembly Items, on the machine side. Code: `CCMS` 

</td>
</tr>
<tr><td><code>ProgramToolGroup</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

tool group this tool is assigned in the part program. 

</td>
</tr>
<tr><td><code>ProgramToolNumber</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

number of the tool as referenced in the part program. 

</td>
</tr>
<tr><td><code>hasCuttingItem</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}"><code>CuttingItem</code></a></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

  (through `CuttingItems`)

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasProcessFeedRate</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessFeedRate.md %}"><code>ProcessFeedRate</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasToolLife</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ToolLife.md %}"><code>ToolLife</code></a></td><td>1.2</td><td></td><td>0..3</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasProcessSpindleSpeed</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ProcessSpindleSpeed.md %}"><code>ProcessSpindleSpeed</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasCutterStatus</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/Status.md %}"><code>Status</code></a></td><td>1.2</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasMeasurement</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ToolingMeasurement.md %}"><code>ToolingMeasurement</code></a></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasReconditionCount</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ReconditionCount.md %}"><code>ReconditionCount</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasLocation</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/Location.md %}"><code>Location</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isCuttingToolLifeCycleOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingTool.md %}"><code>CuttingTool</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isCuttingToolLifeCycleOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolArchetype.md %}"><code>CuttingToolArchetype</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
