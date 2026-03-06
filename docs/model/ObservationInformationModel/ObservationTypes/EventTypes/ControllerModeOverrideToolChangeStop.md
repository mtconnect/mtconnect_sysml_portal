---
title: "ControllerModeOverride.ToolChangeStop"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 64
layout: default
---

# ControllerModeOverride.ToolChangeStop

**Supertype:** `ControllerModeOverride`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

setting or operator selection that changes the behavior of the controller on a piece of equipment.  

Program execution is paused when a command is executed requesting a cutting tool to be changed. 

[`Execution`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Execution.md %}) **MUST** change to `INTERRUPTED` after completion of the command requesting a cutting tool to be changed and `TOOL_CHANGE_STOP` is `ON`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
