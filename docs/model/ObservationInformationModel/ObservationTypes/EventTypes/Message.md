---
title: "Message"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 177
layout: default
---

# Message

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

information to be transferred from a piece of equipment to a client software application.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>nativeCode</code></td><td><code>string</code></td><td>2.1</td><td></td><td>0..1</td>
<td markdown="block">

control system local identification of the information being transferred. 

</td>
</tr>
</tbody></table>
