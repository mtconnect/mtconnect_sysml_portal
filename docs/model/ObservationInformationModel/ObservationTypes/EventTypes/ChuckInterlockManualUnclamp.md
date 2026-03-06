---
title: "ChuckInterlock.ManualUnclamp"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 44
layout: default
---

# ChuckInterlock.ManualUnclamp

**Supertype:** `ChuckInterlock`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

indication of the state of an operator controlled interlock that can inhibit the ability to initiate an unclamp action of an electronically controlled chuck.

When `ChuckInterlockManualUnclamp` is `ACTIVE`, it is expected that a chuck cannot be unclamped until `ChuckInterlockManualUnclamp` is set to `INACTIVE`. 

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
