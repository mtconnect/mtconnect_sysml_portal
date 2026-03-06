---
title: "ProgramLocationType"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 276
layout: default
---

# ProgramLocationType

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |   |

defines whether the logic or motion program defined by [`Program`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Program.md %}) is being executed from the local memory of the controller or from an outside source.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/ProgramLocationTypeEnum.md %}"><code>ProgramLocationTypeEnum</code></a></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ProgramLocationType.Active`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramLocationTypeActive.md %}) | 1.5 |  |
| [`ProgramLocationType.Main`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramLocationTypeMain.md %}) | 1.5 |  |
| [`ProgramLocationType.Schedule`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramLocationTypeSchedule.md %}) | 1.5 |  |

