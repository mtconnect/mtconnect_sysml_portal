---
title: "ProgramNestLevel"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 280
layout: default
---

# ProgramNestLevel

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |   |

indication of the nesting level within a control program that is associated with the code or instructions that is currently being executed.

If an initial value is not defined, the nesting level associated with the highest or initial nesting level of the program **MUST** default to zero (0).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><code>integer</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
