---
title: "ControlLimit"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 56
layout: default
---

# ControlLimit

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 | 2.5 |   |

set of limits used to indicate whether a process variable is stable and in control.

**DEPRECATED** in *Version 2.5*. Replaced by `CONTROL_LIMITS`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>type</code></s></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.7</td><td>2.5</td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>result</code></s></td><td><a href="{% link model/Profile/DataTypes/ControlLimitResult.md %}"><code>ControlLimitResult</code></a></td><td>1.7</td><td>2.5</td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
