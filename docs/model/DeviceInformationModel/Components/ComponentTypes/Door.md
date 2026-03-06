---
title: "Door"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 27
layout: default
---

# Door

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

[`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) composed of a mechanical mechanism or closure that can cover a physical access portal into a piece of equipment allowing or restricting access to other parts of the equipment.

### Description

The closure can be opened or closed to allow or restrict access to other parts of the equipment.

[`Door`]({% link model/DeviceInformationModel/Components/ComponentTypes/Door.md %}) **MUST** have [`DoorState`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DoorState.md %}) data item to indicate if the door is `OPEN`, `CLOSED`, or `UNLATCHED`. A [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) **MAY** contain multiple [`Door`]({% link model/DeviceInformationModel/Components/ComponentTypes/Door.md %}) entities.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesDoorState</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/DoorState.md %}"><code>DoorState</code></a></td><td>1.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
