---
title: "CloseChuck.Response"
parent: "DataItem Types for Interface Package"
grand_parent: "Interface Interaction Model Package"
nav_order: 3
layout: default
---

# CloseChuck.Response

**Supertype:** `CloseChuck`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

operating state of the <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span> to a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> to close a chuck.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `RESPONSE`.

</td>
</tr>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/ResponseStateEnum.md %}"><code>ResponseStateEnum</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
