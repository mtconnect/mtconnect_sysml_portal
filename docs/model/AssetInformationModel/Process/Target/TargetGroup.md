---
title: "TargetGroup"
parent: "Target Package"
grand_parent: "Process Package"
nav_order: 3
layout: default
---

# TargetGroup

**Supertype:** `Target`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

reference to a group of [`Device`]({% link model/DeviceInformationModel/Device.md %})s that have the capability to implement a [`Process`]({% link model/DeviceInformationModel/Components/ComponentTypes/Process.md %}) or a [`Task`]({% link model/AssetInformationModel/Task/Task.md %})

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasTargetDevice</code></td><td><a href="{% link model/AssetInformationModel/Process/Target/TargetDevice.md %}"><code>TargetDevice</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasTargetRef</code></td><td><a href="{% link model/AssetInformationModel/Process/Target/TargetRef.md %}"><code>TargetRef</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
