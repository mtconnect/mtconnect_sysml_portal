---
title: "CompositionState"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 49
layout: default
---

# CompositionState

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

operating state of a mechanism represented by a [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) entity.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.4</td><td></td><td>1</td>
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
| [`CompositionState.Action`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CompositionStateAction.md %}) | 1.4 |  |
| [`CompositionState.Lateral`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CompositionStateLateral.md %}) | 1.4 |  |
| [`CompositionState.Motion`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CompositionStateMotion.md %}) | 1.4 |  |
| [`CompositionState.Switched`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CompositionStateSwitched.md %}) | 1.4 |  |
| [`CompositionState.Vertical`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/CompositionStateVertical.md %}) | 1.4 |  |

