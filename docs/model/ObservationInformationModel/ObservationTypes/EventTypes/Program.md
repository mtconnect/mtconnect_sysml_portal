---
title: "Program"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 254
layout: default
---

# Program

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

name of the logic or motion program being executed by the [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) component.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Program.Active`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramActive.md %}) | 1.5 |  |
| [`Program.Activity`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramActivity.md %}) | 2.0 |  |
| [`Program.Main`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramMain.md %}) | 1.5 |  |
| [`Program.Operation`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramOperation.md %}) | 2.0 |  |
| [`Program.Recipe`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramRecipe.md %}) | 2.0 |  |
| [`Program.Schedule`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramSchedule.md %}) | 1.5 |  |
| [`Program.Segment`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramSegment.md %}) | 2.0 |  |

