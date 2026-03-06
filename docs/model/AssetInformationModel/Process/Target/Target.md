---
title: "Target"
parent: "Target Package"
grand_parent: "Process Package"
nav_order: 1
layout: default
---

# Target
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

information related to a [`Device`]({% link model/DeviceInformationModel/Device.md %}) or [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that may implement a [`Process`]({% link model/DeviceInformationModel/Components/ComponentTypes/Process.md %}) or a [`Task`]({% link model/AssetInformationModel/Task/Task.md %})


## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isTargetsOf</code></td><td><a href="{% link model/AssetInformationModel/Process/Process.md %}"><code>Process</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isTargetOf</code></td><td><a href="{% link model/AssetInformationModel/Process/ProcessArchetype.md %}"><code>ProcessArchetype</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isTargetOf</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/Collaborator.md %}"><code>Collaborator</code></a></td><td>2.7</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isTargetOf</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}"><code>TaskArchetype</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`TargetDevice`]({% link model/AssetInformationModel/Process/Target/TargetDevice.md %}) | 2.7 |  |
| [`TargetGroup`]({% link model/AssetInformationModel/Process/Target/TargetGroup.md %}) | 2.7 |  |
| [`TargetRef`]({% link model/AssetInformationModel/Process/Target/TargetRef.md %}) | 2.7 |  |
| [`TargetRequirementTable`]({% link model/AssetInformationModel/Process/Target/TargetRequirementTable.md %}) | 2.7 |  |

