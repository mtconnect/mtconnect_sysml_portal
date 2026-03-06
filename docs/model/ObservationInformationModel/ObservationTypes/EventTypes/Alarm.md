---
title: "Alarm"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 15
layout: default
---

# Alarm

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 | 1.1 |   |

**DEPRECATED:** Replaced with `CONDITION` category data items in Version 1.1.0.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>type</code></s></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.0</td><td>1.1</td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><s><code>code</code></s></td><td><a href="{% link model/Profile/DataTypes/AlarmCodeEnum.md %}"><code>AlarmCodeEnum</code></a></td><td>1.0</td><td>1.1</td><td>1</td>
<td markdown="block">

type of alarm. 

</td>
</tr>
<tr><td><s><code>severity</code></s></td><td><a href="{% link model/Profile/DataTypes/AlarmSeverityEnum.md %}"><code>AlarmSeverityEnum</code></a></td><td>1.0</td><td>1.1</td><td>1</td>
<td markdown="block">

severity of the alarm. 

</td>
</tr>
<tr><td><s><code>nativeCode</code></s></td><td><code>string</code></td><td>1.0</td><td>1.1</td><td>1</td>
<td markdown="block">

native code for the piece of equipment. 

</td>
</tr>
<tr><td><s><code>state</code></s></td><td><a href="{% link model/Profile/DataTypes/AlarmStateEnum.md %}"><code>AlarmStateEnum</code></a></td><td>1.0</td><td>1.1</td><td>1</td>
<td markdown="block">

state of the alarm. 

</td>
</tr>
<tr><td><s><code>lang</code></s></td><td><code>xslang</code></td><td>1.0</td><td>1.1</td><td>0..1</td>
<td markdown="block">

specifies the language of the alarm text.

See <em>IETF RFC 4646</em> (http://www.ietf.org/rfc/rfc4646.txt). 

</td>
</tr>
</tbody></table>
