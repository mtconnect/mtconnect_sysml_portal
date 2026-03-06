---
title: "ChargeRate"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 47
layout: default
---

# ChargeRate

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.1 |  |   |

value of the current being supplied to the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) for the purpose of charging.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>2.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>2.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>2.1</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `ACTUAL`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ChargeRate.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/ChargeRateActual.md %}) | 2.1 |  |
| [`ChargeRate.Target`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/ChargeRateTarget.md %}) | 2.1 |  |

