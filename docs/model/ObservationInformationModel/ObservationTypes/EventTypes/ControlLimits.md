---
title: "ControlLimits"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 57
layout: default
---

# ControlLimits

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.3 |  |   |

set of limits used to indicate whether a process variable is stable and in control.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/ControlLimitResult.md %}"><code>ControlLimitResult</code></a></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
