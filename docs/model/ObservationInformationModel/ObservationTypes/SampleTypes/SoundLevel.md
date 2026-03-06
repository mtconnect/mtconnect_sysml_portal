---
title: "SoundLevel"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 181
layout: default
---

# SoundLevel

**Supertype:** `Sample`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

sound level or sound pressure level relative to atmospheric pressure.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `A_SCALE`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`SoundLevel.AScale`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/SoundLevelAScale.md %}) | 1.2 |  |
| [`SoundLevel.BScale`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/SoundLevelBScale.md %}) | 1.2 |  |
| [`SoundLevel.CScale`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/SoundLevelCScale.md %}) | 1.2 |  |
| [`SoundLevel.DScale`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/SoundLevelDScale.md %}) | 1.2 |  |
| [`SoundLevel.NoScale`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/SoundLevelNoScale.md %}) | 1.2 |  |

