---
title: "Linear"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 48
layout: default
---

# Linear

**Supertype:** `Axis`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

[`Axis`]({% link model/DeviceInformationModel/Components/ComponentTypes/Axis.md %}) that provides prismatic motion along a fixed axis.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesLoad</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/SampleTypes/Load.md %}"><code>Load</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesTemperature</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/SampleTypes/Temperature.md %}"><code>Temperature</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesAxisFeedrateActual</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/SampleTypes/AxisFeedrateActual.md %}"><code>AxisFeedrate.Actual</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
