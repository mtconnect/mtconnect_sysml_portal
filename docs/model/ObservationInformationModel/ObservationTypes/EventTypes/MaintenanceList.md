---
title: "MaintenanceList"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 166
layout: default
---

# MaintenanceList

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.0 |  |   |

actions or activities to be performed in support of a piece of equipment.

If `MaintenanceList::result::Interval` `key` is not provided, it is assumed `ABSOLUTE`.

If `MaintenanceList::result::Direction` `key` is not provided, it is assumed `UP`.

If `MaintenanceList::result::Units` `key` is not provided, it is assumed to be `COUNT`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/Profile/DataTypes/MaintenanceListResult.md %}"><code>MaintenanceListResult</code></a></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
