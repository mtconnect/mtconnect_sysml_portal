---
title: "AxisFeedrateOverride"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 31
layout: default
---

# AxisFeedrateOverride

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

value of a signal or calculation issued to adjust the feedrate of an individual linear type axis.

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
| [`AxisFeedrateOverride.Jog`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/AxisFeedrateOverrideJog.md %}) | 1.3 |  |
| [`AxisFeedrateOverride.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/AxisFeedrateOverrideProgrammed.md %}) | 1.3 |  |
| [`AxisFeedrateOverride.Rapid`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/AxisFeedrateOverrideRapid.md %}) | 1.3 |  |

