---
title: "Status"
parent: "Cutting Tool Life Cycle Package"
grand_parent: "Cutting Tool Package"
nav_order: 12
layout: default
---

# Status
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

status of the cutting tool.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>value</code></td><td><a href="{% link model/Profile/DataTypes/CutterStatusTypeEnum.md %}"><code>CutterStatusTypeEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

status value of the cutting tool. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isCutterStatusOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}"><code>CuttingItem</code></a></td><td>1.2</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isCutterStatusOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
