---
title: "Uncertainty"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 322
layout: default
---

# Uncertainty

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |   |

<span class="hoverterm">uncertainty<span class="definition" data-term="uncertainty">uncertainty (of measurement) parameter, associated with the result of a measurement, that characterizes the dispersion of the values that could reasonably be attributed to the measurand. <em>JCGM 100:2008 2.2.3</em>

> Note: Use of the term uncertainty refers to uncertainty of measurement.</span></span> specified by [`UncertaintyType`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UncertaintyType.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>result</code></td><td><code>double</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
