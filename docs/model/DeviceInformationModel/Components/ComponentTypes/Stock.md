---
title: "Stock"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 85
layout: default
---

# Stock

**Supertype:** `Material`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

[`Material`]({% link model/DeviceInformationModel/Components/ComponentTypes/Material.md %}) that is used in a manufacturing process and to which work is applied in a machine or piece of equipment to produce parts.

### Description

[`Stock`]({% link model/DeviceInformationModel/Components/ComponentTypes/Stock.md %}) may be either a continuous piece of material from which multiple parts may be produced or it may be a discrete piece of material that will be made into a part or a set of parts.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesMaterial</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/Material.md %}"><code>Material</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesLengthRemaining</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/SampleTypes/LengthRemaining.md %}"><code>Length.Remaining</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesLengthStandard</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/SampleTypes/LengthStandard.md %}"><code>Length.Standard</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
