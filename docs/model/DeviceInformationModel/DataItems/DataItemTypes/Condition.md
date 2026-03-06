---
title: "Condition"
parent: "DataItem Types Package"
grand_parent: "DataItems Package"
nav_order: 1
layout: default
---

# Condition

**Supertype:** `DataItem`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

abstract [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) that is about an entity's status regarding its ability to operate or it provides an indication whether the data reported for the entity is within an expected range.

### Description

[`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) is reported differently than [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %}) or [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}).  [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) **MUST** be reported as `Normal`, `Warning`, or `Fault`.

All [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %})s **MAY** have associated [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) states.  [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) states indicate whether the value for the data is within an expected range and **MUST** be reported as `Normal`, or the value is unexpected or out of tolerance for the data and a `Warning` or `Fault` **MUST** be provided.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>category</code></td><td><a href="{% link model/Profile/DataTypes/CategoryEnum.md %}"><code>CategoryEnum</code></a></td><td>1.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/ConditionEnum.md %}"><code>ConditionEnum</code></a></td><td>1.1</td><td></td><td>1</td>
<td markdown="block">

 The `type` **MUST** be specified

</td>
</tr>
</tbody></table>
