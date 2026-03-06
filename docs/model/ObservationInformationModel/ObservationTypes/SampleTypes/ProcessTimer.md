---
title: "ProcessTimer"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 165
layout: default
---

# ProcessTimer

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

amount of time a piece of equipment has performed different types of activities associated with the process being performed at that piece of equipment.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.4</td><td></td><td>1</td>
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
| [`ProcessTimer.Delay`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/ProcessTimerDelay.md %}) | 1.4 |  |
| [`ProcessTimer.Process`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/ProcessTimerProcess.md %}) | 1.4 |  |

