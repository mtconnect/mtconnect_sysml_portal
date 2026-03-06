---
title: "Voltage"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 200
layout: default
---

# Voltage

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 | 1.6 |   |

electrical potential between two points.

**DEPRECATED** in *Version 1.6*. Replaced by `VOLTAGE_AC` and `VOLTAGE_DC`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>units</code></s></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.0</td><td>1.6</td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><s><code>type</code></s></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.0</td><td>1.6</td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Voltage.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageActual.md %}) | 1.4 | 1.6 |
| [`Voltage.Alternating`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageAlternating.md %}) | 1.2 | 1.6 |
| [`Voltage.Direct`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageDirect.md %}) | 1.2 | 1.6 |
| [`Voltage.Target`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/VoltageTarget.md %}) | 1.4 | 1.6 |

