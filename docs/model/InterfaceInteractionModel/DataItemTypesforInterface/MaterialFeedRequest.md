---
title: "MaterialFeed.Request"
parent: "DataItem Types for Interface Package"
grand_parent: "Interface Interaction Model Package"
nav_order: 12
layout: default
---

# MaterialFeed.Request

**Supertype:** `MaterialFeed`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

operating state of the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> to advance material or feed product to a piece of equipment from a continuous or bulk source.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `REQUEST`.

</td>
</tr>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/RequestStateEnum.md %}"><code>RequestStateEnum</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
