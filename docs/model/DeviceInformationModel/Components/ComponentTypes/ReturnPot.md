---
title: "ReturnPot"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 77
layout: default
---

# ReturnPot

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

leaf [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that is a [`Pot`]({% link model/DeviceInformationModel/Components/ComponentTypes/Pot.md %}) for a tool that has been removed from <span class="hoverterm">spindle<span class="definition" data-term="spindle">mechanism that provides rotational capabilities to a piece of equipment. 

> Note: Typically used for either work holding, materials or cutting tools.

</span></span> or [`Turret`]({% link model/DeviceInformationModel/Components/ComponentTypes/Turret.md %}) and awaiting for return to a [`ToolMagazine`]({% link model/DeviceInformationModel/Components/ComponentTypes/ToolMagazine.md %}).

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasComposition</code></td><td><a href="{% link model/DeviceInformationModel/Compositions/Composition.md %}"><code>Composition</code></a></td><td>1.7</td><td></td><td>0</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasComponent</code></td><td><a href="{% link model/DeviceInformationModel/Components/Component.md %}"><code>Component</code></a></td><td>1.7</td><td></td><td>0</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
