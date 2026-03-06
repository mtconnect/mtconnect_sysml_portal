---
title: "CloseDoor"
parent: "DataItem Types for Interface Package"
grand_parent: "Interface Interaction Model Package"
nav_order: 4
layout: default
---

# CloseDoor

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

operating state of the service to close a door.

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
| [`CloseDoor.Request`]({% link model/InterfaceInteractionModel/DataItemTypesforInterface/CloseDoorRequest.md %}) | 1.3 |  |
| [`CloseDoor.Response`]({% link model/InterfaceInteractionModel/DataItemTypesforInterface/CloseDoorResponse.md %}) | 1.3 |  |

