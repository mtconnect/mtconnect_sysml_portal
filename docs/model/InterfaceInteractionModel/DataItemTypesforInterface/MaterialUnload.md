---
title: "MaterialUnload"
parent: "DataItem Types for Interface Package"
grand_parent: "Interface Interaction Model Package"
nav_order: 20
layout: default
---

# MaterialUnload

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

operating state of the service to unload a piece of material or product.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/InterfaceEventEnum.md %}"><code>InterfaceEventEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`MaterialUnload.Request`]({% link model/InterfaceInteractionModel/DataItemTypesforInterface/MaterialUnloadRequest.md %}) | 1.3 |  |
| [`MaterialUnload.Response`]({% link model/InterfaceInteractionModel/DataItemTypesforInterface/MaterialUnloadResponse.md %}) | 1.3 |  |

