---
title: "SensorState"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 285
layout: default
---

# SensorState

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |   |

detection result of a sensor.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `BINARY`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`SensorState.Binary`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/SensorStateBinary.md %}) | 2.2 |  |
| [`SensorState.Boolean`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/SensorStateBoolean.md %}) | 2.2 |  |
| [`SensorState.Detect`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/SensorStateDetect.md %}) | 2.2 |  |
| [`SensorState.Enumerated`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/SensorStateEnumerated.md %}) | 2.2 |  |

