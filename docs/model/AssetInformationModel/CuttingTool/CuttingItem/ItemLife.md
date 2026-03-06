---
title: "ItemLife"
parent: "Cutting Item Package"
grand_parent: "Cutting Tool Package"
nav_order: 4
layout: default
---

# ItemLife
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

life of a [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>countDirection</code></td><td><a href="{% link model/Profile/DataTypes/CountDirectionTypeEnum.md %}"><code>CountDirectionTypeEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

indicates if the item life counts from zero to maximum or maximum to zero. 

</td>
</tr>
<tr><td><code>initial</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

initial life of the item when it is new. 

</td>
</tr>
<tr><td><code>limit</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

end of life limit for this item. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/ToolLifeEnum.md %}"><code>ToolLifeEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

type of item life being accumulated. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>warning</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

point at which a item life warning will be raised. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>float</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

value of [`ItemLife`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/ItemLife.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isItemLifeOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}"><code>CuttingItem</code></a></td><td>1.2</td><td></td><td>0..3</td>
<td markdown="block">

The tool life measured in tool wear. 

</td>
</tr>

</tbody></table>
