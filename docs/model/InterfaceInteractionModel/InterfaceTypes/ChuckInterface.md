---
title: "ChuckInterface"
parent: "Interface Types Package"
grand_parent: "Interface Interaction Model Package"
nav_order: 2
layout: default
---

# ChuckInterface

**Supertype:** `Interface`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

[`Interface`]({% link model/InterfaceInteractionModel/Interface.md %}) that coordinates the operations between two pieces of equipment, one of which controls the operation of a chuck.

The piece of equipment that is controlling the chuck **MUST** provide the data item [`ChuckState`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ChuckState.md %}) as part of the set of information provided.
