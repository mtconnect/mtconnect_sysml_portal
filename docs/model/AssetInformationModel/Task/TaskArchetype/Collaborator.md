---
title: "Collaborator"
parent: "Task Archetype Package"
grand_parent: "Task Package"
nav_order: 1
layout: default
---

# Collaborator
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

[`Device`]({% link model/DeviceInformationModel/Device.md %}) or [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that is required to implement a [`Task`]({% link model/AssetInformationModel/Task/Task.md %})

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>collaboratorId</code></td><td><code>ID</code></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

identifier for the collaborator 

</td>
</tr>
<tr><td><code>type</code></td><td><code>string</code></td><td>2.7</td><td></td><td>0..1</td>
<td markdown="block">

type of the collaborator

Examples include `ROBOT`, `CNC`, `CMM` and `BUFFER`. 

</td>
</tr>
<tr><td><code>optional</code></td><td><code>boolean</code></td><td>2.7</td><td></td><td>0..1</td>
<td markdown="block">

indicates if the collaborator is discretionary and not mandatory to implement a task 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasTarget</code></td><td><a href="{% link model/AssetInformationModel/Process/Target/Target.md %}"><code>Target</code></a></td><td>2.7</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isCollaboratorOf</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}"><code>TaskArchetype</code></a></td><td>2.7</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isCoordinatorOf</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}"><code>TaskArchetype</code></a></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
