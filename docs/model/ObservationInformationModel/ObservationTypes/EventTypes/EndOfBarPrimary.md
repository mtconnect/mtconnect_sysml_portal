---
title: "EndOfBar.Primary"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 104
layout: default
---

# EndOfBar.Primary

**Supertype:** `EndOfBar`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

specific applications **MAY** reference one or more locations on a piece of bar stock as the indication for the [`EndOfBar`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EndOfBar.md %}). 

The main or most important location **MUST** be designated as the `PRIMARY` indication for the [`EndOfBar`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EndOfBar.md %}).

If no `subType` is specified, `PRIMARY` **MUST** be the default [`EndOfBar`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/EndOfBar.md %}) indication.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
