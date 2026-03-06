---
title: "TargetRequirementTable"
parent: "Target Package"
grand_parent: "Process Package"
nav_order: 5
layout: default
---

# TargetRequirementTable

**Supertype:** `Target`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

list of requirements a [`Device`]({% link model/DeviceInformationModel/Device.md %}) or a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) **MUST** satisfy to implement a [`Process`]({% link model/DeviceInformationModel/Components/ComponentTypes/Process.md %}) or a [`Task`]({% link model/AssetInformationModel/Task/Task.md %})

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasEntry</code></td><td><a href="{% link model/ObservationInformationModel/Representations/Table/Entry.md %}"><code>Entry</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
