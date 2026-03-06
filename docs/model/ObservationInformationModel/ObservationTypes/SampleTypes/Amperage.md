---
title: "Amperage"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 6
layout: default
---

# Amperage

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 | 1.6 |   |

strength of electrical current.

**DEPRECATED** in *Version 1.6*. Replaced by `AMPERAGE_AC` and `AMPERAGE_DC`.

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
| [`Amperage.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AmperageActual.md %}) | 1.4 | 1.6 |
| [`Amperage.Alternating`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AmperageAlternating.md %}) | 1.2 | 1.6 |
| [`Amperage.Direct`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AmperageDirect.md %}) | 1.2 | 1.6 |
| [`Amperage.Target`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AmperageTarget.md %}) | 1.4 | 1.6 |

