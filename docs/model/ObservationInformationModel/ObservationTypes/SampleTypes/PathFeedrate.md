---
title: "PathFeedrate"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 136
layout: default
---

# PathFeedrate

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

feedrate for the axes, or a single axis, associated with a [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) component.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`PathFeedrate.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathFeedrateActual.md %}) | 1.0 |  |
| [`PathFeedrate.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathFeedrateCommanded.md %}) | 1.0 |  |
| [`PathFeedrate.Jog`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathFeedrateJog.md %}) | 1.3 |  |
| [`PathFeedrate.Override`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathFeedrateOverride.md %}) | 1.0 | 1.3 |
| [`PathFeedrate.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathFeedrateProgrammed.md %}) | 1.3 |  |
| [`PathFeedrate.Rapid`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathFeedrateRapid.md %}) | 1.3 |  |

