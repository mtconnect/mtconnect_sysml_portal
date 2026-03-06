---
title: "ControllerModeOverride"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 59
layout: default
---

# ControllerModeOverride

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

setting or operator selection that changes the behavior of a piece of equipment.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/ControllerModeOverrideEnum.md %}"><code>ControllerModeOverrideEnum</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ControllerModeOverride.DryRun`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ControllerModeOverrideDryRun.md %}) | 1.4 |  |
| [`ControllerModeOverride.MachineAxisLock`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ControllerModeOverrideMachineAxisLock.md %}) | 1.4 |  |
| [`ControllerModeOverride.OptionalStop`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ControllerModeOverrideOptionalStop.md %}) | 1.4 |  |
| [`ControllerModeOverride.SingleBlock`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ControllerModeOverrideSingleBlock.md %}) | 1.4 |  |
| [`ControllerModeOverride.ToolChangeStop`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ControllerModeOverrideToolChangeStop.md %}) | 1.4 |  |

