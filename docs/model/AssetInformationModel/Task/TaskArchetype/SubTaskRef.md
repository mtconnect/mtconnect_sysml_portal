---
title: "SubTaskRef"
parent: "Task Archetype Package"
grand_parent: "Task Package"
nav_order: 4
layout: default
---

# SubTaskRef

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>parallel</code></td><td><code>boolean</code></td><td></td><td></td><td>0..1</td>
<td markdown="block">

indication signifying that subtasks can be executed simultaneously 

</td>
</tr>
<tr><td><code>group</code></td><td><code>string</code></td><td></td><td></td><td>0..1</td>
<td markdown="block">

identifier to a set of subtasks organized to be treated collectively within the parent task 

</td>
</tr>
<tr><td><code>order</code></td><td><code>integer</code></td><td></td><td></td><td>1</td>
<td markdown="block">

position of a subtask within an explicit arrangement where one subtask follows another 

</td>
</tr>
<tr><td><code>optional</code></td><td><code>boolean</code></td><td></td><td></td><td>0..1</td>
<td markdown="block">

indicates if a subtask is discretionary and not mandatory 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>taskArchetype2</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}"><code>TaskArchetype</code></a></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>taskArchetype3</code></td><td><a href="{% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}"><code>TaskArchetype</code></a></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Organizes

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`TaskArchetype`]({% link model/AssetInformationModel/Task/TaskArchetype/TaskArchetype.md %}) | 2.7 |  |

