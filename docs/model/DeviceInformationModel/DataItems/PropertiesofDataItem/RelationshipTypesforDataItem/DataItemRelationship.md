---
title: "DataItemRelationship"
parent: "Relationship Types for DataItem Package"
grand_parent: "Properties of DataItem Package"
nav_order: 2
layout: default
---

# DataItemRelationship

**Supertype:** `AbstractDataItemRelationship`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`AbstractDataItemRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/AbstractDataItemRelationship.md %}) that provides a semantic reference to another [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) described by [`DataItemRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/DataItemRelationship.md %})::`type`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/DataItemRelationshipTypeEnum.md %}"><code>DataItemRelationshipTypeEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

specifies how the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) is related. The `type` **MUST** be specified

</td>
</tr>
</tbody></table>
