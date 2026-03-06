---
title: "Acceleration"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 1
layout: default
---

# Acceleration

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

positive rate of change of velocity.

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
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `ACTUAL`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Acceleration.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AccelerationActual.md %}) | 1.8 |  |
| [`Acceleration.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AccelerationCommanded.md %}) | 1.8 |  |
| [`Acceleration.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AccelerationProgrammed.md %}) | 1.8 |  |

