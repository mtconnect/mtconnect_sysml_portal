---
title: "PartKindId"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 215
layout: default
---

# PartKindId

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

identifier given to link the individual occurrence to a class of parts, typically distinguished by a particular part design.

If no [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`subType` is specified, `UUID` is default.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 An unspecified `subType` **MUST** default to `UUID`.

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`PartKindId.PartFamily`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartKindIdPartFamily.md %}) | 1.7 |  |
| [`PartKindId.PartName`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartKindIdPartName.md %}) | 1.7 |  |
| [`PartKindId.PartNumber`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartKindIdPartNumber.md %}) | 1.7 |  |
| [`PartKindId.Uuid`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartKindIdUuid.md %}) | 1.7 |  |

