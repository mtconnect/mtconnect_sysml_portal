---
title: "ControllerModeOverride.OptionalStop"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 62
layout: default
---

# ControllerModeOverride.OptionalStop

**Supertype:** `ControllerModeOverride`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

setting or operator selection that changes the behavior of the controller on a piece of equipment. 

The program execution is stopped after a specific program block is executed when `OPTIONAL_STOP` is `ON`.    

In the case of a G-Code program, a program block containing a M01 code designates the command for an `OPTIONAL_STOP`. 

[`Execution`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Execution.md %}) **MUST** change to `OPTIONAL_STOP` after a program block specifying an optional stop is executed and the [`ControllerModeOverride`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ControllerModeOverride.md %}) `OPTIONAL_STOP` selection is `ON`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
