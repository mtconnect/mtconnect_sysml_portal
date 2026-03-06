---
title: "ProgramHeader"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 268
layout: default
---

# ProgramHeader

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

non-executable header section of the control program.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `MAIN`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ProgramHeader.Active`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramHeaderActive.md %}) | 1.5 |  |
| [`ProgramHeader.Main`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramHeaderMain.md %}) | 1.5 |  |
| [`ProgramHeader.Schedule`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramHeaderSchedule.md %}) | 1.5 |  |

