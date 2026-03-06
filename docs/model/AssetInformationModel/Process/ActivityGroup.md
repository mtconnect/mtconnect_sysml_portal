---
title: "ActivityGroup"
parent: "Process Package"
grand_parent: "Asset Information Model Package"
nav_order: 3
layout: default
---

# ActivityGroup
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

group of [`Activity`]({% link model/AssetInformationModel/Process/Activity.md %})s organized for a common objective within a process step

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasActivity</code></td><td><a href="{% link model/AssetInformationModel/Process/Activity.md %}"><code>Activity</code></a></td><td>2.7</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isActivityGroupOf</code></td><td><a href="{% link model/AssetInformationModel/Process/ProcessStep.md %}"><code>ProcessStep</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
