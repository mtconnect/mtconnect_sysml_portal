---
title: "Deceleration"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 56
layout: default
---

# Deceleration

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

negative rate of change of velocity.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `ACTUAL`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Deceleration.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/DecelerationActual.md %}) | 1.7 |  |
| [`Deceleration.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/DecelerationCommanded.md %}) | 1.7 |  |
| [`Deceleration.Programmed`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/DecelerationProgrammed.md %}) | 1.7 |  |

