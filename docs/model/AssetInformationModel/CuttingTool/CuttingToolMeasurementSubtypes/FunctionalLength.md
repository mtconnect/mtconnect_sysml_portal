---
title: "FunctionalLength"
parent: "Cutting Tool Measurement Subtypes Package"
grand_parent: "Cutting Tool Package"
nav_order: 6
layout: default
---

# FunctionalLength

**Supertype:** `ToolingMeasurement`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

distance from the gauge plane or from the end of the shank to the furthest point on the tool, if a gauge plane does not exist, to the cutting reference point determined by the main function of the tool.

The [`CuttingTool`]({% link model/AssetInformationModel/CuttingTool/CuttingTool.md %}) functional length will be the length of the entire tool, not a single cutting item. Each [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}) can have an independent [`FunctionalLength`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/FunctionalLength.md %}) represented in its measurements. 

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>code</code></td><td><a href="{% link model/Profile/DataTypes/CodeEnum.md %}"><code>CodeEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
