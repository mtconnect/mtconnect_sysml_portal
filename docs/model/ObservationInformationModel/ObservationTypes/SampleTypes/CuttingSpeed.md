---
title: "CuttingSpeed"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 52
layout: default
---

# CuttingSpeed

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |   |

speed difference (relative velocity) between the cutting mechanism and the surface of the workpiece it is operating on.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`CuttingSpeed.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/CuttingSpeedActual.md %}) | 1.5 |  |
| [`CuttingSpeed.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/CuttingSpeedCommanded.md %}) | 1.5 |  |
| [`CuttingSpeed.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/CuttingSpeedProgrammed.md %}) | 1.5 |  |

