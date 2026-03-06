---
title: "InterfaceState"
parent: "DataItem Types for Interface Package"
grand_parent: "Interface Interaction Model Package"
nav_order: 7
layout: default
---

# InterfaceState

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

operational state of an [`Interface`]({% link model/InterfaceInteractionModel/Interface.md %}).

When the [`InterfaceState`]({% link model/InterfaceInteractionModel/DataItemTypesforInterface/InterfaceState.md %}) is `DISABLED`, the state of all data items that are specific for the <span class="hoverterm">interaction model<span class="definition" data-term="interaction model">model that defines how information is exchanged across an *interface* to enable interactions between independent systems.</span></span> associated with that [`Interface`]({% link model/InterfaceInteractionModel/Interface.md %}) **MUST** be set to `NOT_READY`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/InterfaceEventEnum.md %}"><code>InterfaceEventEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/InterfaceStateEnum.md %}"><code>InterfaceStateEnum</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
