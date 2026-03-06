---
title: "PartUniqueId"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 223
layout: default
---

# PartUniqueId

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

identifier given to a distinguishable, individual part. 

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
| [`PartUniqueId.RawMaterial`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartUniqueIdRawMaterial.md %}) | 1.7 |  |
| [`PartUniqueId.SerialNumber`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartUniqueIdSerialNumber.md %}) | 1.7 |  |
| [`PartUniqueId.Uuid`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartUniqueIdUuid.md %}) | 1.7 |  |

