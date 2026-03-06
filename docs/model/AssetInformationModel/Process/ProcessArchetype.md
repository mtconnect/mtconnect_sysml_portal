---
title: "ProcessArchetype"
parent: "Process Package"
grand_parent: "Asset Information Model Package"
nav_order: 6
layout: default
---

# ProcessArchetype

**Supertype:** `Asset`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

[`Asset`]({% link model/AssetInformationModel/Asset.md %}) that defines common data for all derived [`Process`]({% link model/DeviceInformationModel/Components/ComponentTypes/Process.md %})es.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasRouting</code></td><td><a href="{% link model/AssetInformationModel/Process/Routing.md %}"><code>Routing</code></a></td><td>2.7</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasTarget</code></td><td><a href="{% link model/AssetInformationModel/Process/Target/Target.md %}"><code>Target</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
