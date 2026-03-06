---
title: "SpindleSpeed"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 187
layout: default
---

# SpindleSpeed

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 | 1.2 |   |

rotational speed of the rotary axis.

**DEPRECATED** in *Version 1.2*.  Replaced by `ROTARY_VELOCITY`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>units</code></s></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.0</td><td>1.2</td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><s><code>type</code></s></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.0</td><td>1.2</td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`SpindleSpeed.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/SpindleSpeedActual.md %}) | 1.0 | 1.2 |
| [`SpindleSpeed.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/SpindleSpeedCommanded.md %}) | 1.0 | 1.2 |
| [`SpindleSpeed.Override`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/SpindleSpeedOverride.md %}) | 1.0 | 1.2 |

