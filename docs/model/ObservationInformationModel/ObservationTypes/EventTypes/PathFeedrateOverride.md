---
title: "PathFeedrateOverride"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 227
layout: default
---

# PathFeedrateOverride

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

value of a signal or calculation issued to adjust the feedrate for the axes associated with a [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) component that may represent a single axis or the coordinated movement of multiple axes.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><code>float</code></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`PathFeedrateOverride.Jog`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PathFeedrateOverrideJog.md %}) | 1.3 |  |
| [`PathFeedrateOverride.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PathFeedrateOverrideProgrammed.md %}) | 1.3 |  |
| [`PathFeedrateOverride.Rapid`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PathFeedrateOverrideRapid.md %}) | 1.3 |  |

