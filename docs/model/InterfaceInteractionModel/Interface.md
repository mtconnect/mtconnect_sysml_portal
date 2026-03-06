---
title: "Interface"
parent: "Interface Interaction Model Package"
nav_order: 6
layout: default
---

# Interface

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

abstract [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that coordinates actions and activities between pieces of equipment.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isInterfaceOf</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>1.3</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Interfaces`)

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesInterfaceState</code></td><td><a href="{% link model/InterfaceInteractionModel/DataItemTypesforInterface/InterfaceState.md %}"><code>InterfaceState</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`BarFeederInterface`]({% link model/InterfaceInteractionModel/InterfaceTypes/BarFeederInterface.md %}) | 1.3 |  |
| [`ChuckInterface`]({% link model/InterfaceInteractionModel/InterfaceTypes/ChuckInterface.md %}) | 1.3 |  |
| [`DoorInterface`]({% link model/InterfaceInteractionModel/InterfaceTypes/DoorInterface.md %}) | 1.3 |  |
| [`MaterialHandlerInterface`]({% link model/InterfaceInteractionModel/InterfaceTypes/MaterialHandlerInterface.md %}) | 1.3 |  |
| [`Requester`]({% link model/InterfaceInteractionModel/Requester.md %}) | 1.3 |  |
| [`Responder`]({% link model/InterfaceInteractionModel/Responder.md %}) | 1.3 |  |

