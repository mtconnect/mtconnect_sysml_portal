---
title: "FeatureMeasurementResult"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 54
layout: default
---

# FeatureMeasurementResult

**Supertype:** `Table`

**Stereotypes:** `<<valueType>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |   |

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>FeaturePersistentId</code></td><td><code>ID</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

*UUID* of the feature. 

</td>
</tr>
<tr><td><code>CharacteristicPersistentId</code></td><td><code>ID</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

*UUID* of the characteristic. 

</td>
</tr>
<tr><td><code>MeasurementType</code></td><td><code>string</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

class of measurement being performed. <em>QIF 3:2018 Section 6.3</em>

Examples: `POINT`, `RADIUS`, `ANGLE`, `LENGTH`, etc. 

</td>
</tr>
<tr><td><code>MeasurementValue</code></td><td><code>float</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

measurement based on the measurement type. 

</td>
</tr>
<tr><td><code>MeasurementUnits</code></td><td><code>string</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

engineering units of the measurement. 

</td>
</tr>
<tr><td><code>CharacteristicStatus</code></td><td><a href="{% link model/Profile/DataTypes/CharacteristicStatusEnum.md %}"><code>CharacteristicStatusEnum</code></a></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

pass/fail result of the measurement. 

</td>
</tr>
<tr><td><code>UncertaintyType</code></td><td><a href="{% link model/Profile/DataTypes/UncertaintyTypeEnum.md %}"><code>UncertaintyTypeEnum</code></a></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

method used to compute <span class="hoverterm">standard uncertainty<span class="definition" data-term="standard uncertainty">*uncertainty* of the result of a measurement expressed as a standard deviation. <em>JCGM 100:2008 2.3.1</em></span></span>. 

</td>
</tr>
<tr><td><code>Uncertainty</code></td><td><code>float</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

<span class="hoverterm">uncertainty<span class="definition" data-term="uncertainty">uncertainty (of measurement) parameter, associated with the result of a measurement, that characterizes the dispersion of the values that could reasonably be attributed to the measurand. <em>JCGM 100:2008 2.2.3</em>

> Note: Use of the term uncertainty refers to uncertainty of measurement.</span></span> specified by `UNCERTAINTY_TYPE`. 

</td>
</tr>
</tbody></table>
