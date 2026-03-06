---
title: "FeatureMeasurement"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 112
layout: default
---

# FeatureMeasurement

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |   |

tabular representation of assessing elements of a <span class="hoverterm">feature<span class="definition" data-term="feature">topological entity(ies) or design requirements related to a geometric model. <em>QIF 3.0-3.4.59</em></span></span>.

[`FeatureMeasurement`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/FeatureMeasurement.md %}) **MAY** include a <span class="hoverterm">characteristic<span class="definition" data-term="characteristic">control placed on an element of a *feature* such as its size, location, or form, which may be a specification limit, a nominal with tolerance, or some other numerical or non-numerical control. <em>QIF 3.0 3.4.29</em>. <em>AS9102-B</em>.</span></span> in which case it **MAY** include a `CHARACTERISTIC_STATUS`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/FeatureMeasurementResult.md %}"><code>FeatureMeasurementResult</code></a></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
