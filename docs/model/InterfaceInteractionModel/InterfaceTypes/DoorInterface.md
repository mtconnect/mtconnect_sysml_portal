---
title: "DoorInterface"
parent: "Interface Types Package"
grand_parent: "Interface Interaction Model Package"
nav_order: 3
layout: default
---

# DoorInterface

**Supertype:** `Interface`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

[`Interface`]({% link model/InterfaceInteractionModel/Interface.md %}) that coordinates the operations between two pieces of equipment, one of which controls the operation of a door.

The piece of equipment that is controlling the door **MUST** provide data item [`DoorState`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DoorState.md %}) as part of the set of information provided.
