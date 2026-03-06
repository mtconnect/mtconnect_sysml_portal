---
title: "Event"
parent: "DataItem Types Package"
grand_parent: "DataItems Package"
nav_order: 2
layout: default
---

# Event

**Supertype:** `DataItem`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

abstract [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) that is a discrete piece of information from a piece of equipment. It does not have intermediate values that vary over time.

### Description

An [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}) is information that, when provided at any specific point in time, represents the current state of the piece of equipment.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>category</code></td><td><a href="{% link model/Profile/DataTypes/CategoryEnum.md %}"><code>CategoryEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 The `type` **MUST** be specified

</td>
</tr>
</tbody></table>
