---
title: "TaskArchetype"
parent: "Task Archetype Package"
grand_parent: "Task Package"
nav_order: 7
layout: default
---

# TaskArchetype

**Supertype:** `Asset`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

[`Asset`]({% link model/AssetInformationModel/Asset.md %}) that defines common data for all derived [`Task`]({% link model/AssetInformationModel/Task/Task.md %})s

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>TaskType</code></td><td><code>string</code></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

semantic goal of the task

Examples include `MOVE_MATERIAL` and `CHANGE_TOOL`. 

</td>
</tr>
<tr><td><code>isSubTaskOf</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}"><code>TaskArchetype</code></a></td><td>2.7</td><td></td><td>0..1</td>
<td markdown="block">

  (through `SubTaskRef`)

</td>
</tr>
<tr><td><code>hasSubTask</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}"><code>TaskArchetype</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

  (through `SubTaskRef`)

</td>
</tr>
<tr><td><code>isSubTaskOf</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}"><code>TaskArchetype</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

  (through `SubTaskRef`)

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasCollaborator</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/Collaborator.md %}"><code>Collaborator</code></a></td><td>2.7</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasCoordinator</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/Collaborator.md %}"><code>Collaborator</code></a></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasTarget</code></td><td><a href="{% link model/AssetInformationModel/Process/Target/Target.md %}"><code>Target</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
