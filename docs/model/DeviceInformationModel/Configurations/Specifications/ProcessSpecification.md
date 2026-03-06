---
title: "ProcessSpecification"
parent: "Specifications Package"
grand_parent: "Configurations Package"
nav_order: 22
layout: default
---

# ProcessSpecification

**Supertype:** `Specification`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`Specification`]({% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %}) that provides information used to assess the conformance of a variable to process requirements.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasSpecificationLimits</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/SpecificationLimits.md %}"><code>SpecificationLimits</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasControlLimits</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/ControlLimits.md %}"><code>ControlLimits</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasAlarmLimits</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/AlarmLimits.md %}"><code>AlarmLimits</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
