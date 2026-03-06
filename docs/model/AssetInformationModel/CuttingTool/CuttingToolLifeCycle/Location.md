---
title: "Location"
parent: "Cutting Tool Life Cycle Package"
grand_parent: "Cutting Tool Package"
nav_order: 3
layout: default
---

# Location
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

location of the pot or spindle the cutting tool currently resides in.

If [`Location`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/Location.md %})::`negativeOverlap` or [`Location`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/Location.md %})::`positiveOverlap` is provided, the tool reserves additional locations on either side, otherwise if they are not given, no additional locations are required for this tool.

If the pot occupies the first or last location, a rollover to the beginning or the end of the indexable values may occur. For example, if there are 64 pots and the tool is in pot 64 with a [`Location`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/Location.md %})::`positiveOverlap` of 1, the first pot **MAY** be occupied as well.

### Description

[`Location`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/Location.md %}) **MUST** be defined only for the [`CuttingToolLifeCycle`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}) of [`CuttingTool`]({% link model/AssetInformationModel/CuttingTool/CuttingTool.md %}) and **MUST NOT** be defined for the [`CuttingToolLifeCycle`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}) of [`CuttingToolArchetype`]({% link model/AssetInformationModel/CuttingTool/CuttingToolArchetype.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>negativeOverlap</code></td><td><code>integer</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

number of locations at lower index values from this location. 

</td>
</tr>
<tr><td><code>positiveOverlap</code></td><td><code>integer</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

number of locations at higher index value from this location. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/LocationTypeEnum.md %}"><code>LocationTypeEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

type of location being identified. 

When a `POT` or `STATION` type is used, [`Location`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/Location.md %})::`value`**MUST** be a numeric value. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>turret</code></td><td><code>string</code></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

turret associated with a tool. 

</td>
</tr>
<tr><td><code>toolMagazine</code></td><td><code>string</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

tool magazine associated with a tool. 

</td>
</tr>
<tr><td><code>toolBar</code></td><td><code>string</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

tool bar associated with a tool. 

</td>
</tr>
<tr><td><code>toolRack</code></td><td><code>string</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

tool rack associated with a tool. 

</td>
</tr>
<tr><td><code>automaticToolChanger</code></td><td><code>string</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

automatic tool changer associated with a tool. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isLocationOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
