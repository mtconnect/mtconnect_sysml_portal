---
title: "Personnel"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 61
layout: default
---

# Personnel

**Supertype:** `Resource`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

[`Resource`]({% link model/DeviceInformationModel/Components/ComponentTypes/Resource.md %}) composed of an individual or individuals who either control, support, or otherwise interface with a piece of equipment.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesUserOperator</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/UserOperator.md %}"><code>User.Operator</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesUserMaintenance</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/UserMaintenance.md %}"><code>User.Maintenance</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
