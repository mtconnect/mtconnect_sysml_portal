---
title: "DeviceChanged"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 94
layout: default
---

# DeviceChanged

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

*UUID* of the device whose <span class="hoverterm">metadata<span class="definition" data-term="metadata">data that provides information about other data.

</span></span> has changed.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hash</code></td><td><code>string</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

condensed message digest from a secure one-way hash function. <em>FIPS PUB 180-4</em> 

</td>
</tr>
</tbody></table>
