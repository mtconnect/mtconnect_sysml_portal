---
title: "SpecificationRelationship"
parent: "Relationship Types for DataItem Package"
grand_parent: "Properties of DataItem Package"
nav_order: 3
layout: default
---

# SpecificationRelationship

**Supertype:** `AbstractDataItemRelationship`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`AbstractDataItemRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/AbstractDataItemRelationship.md %}) that provides a semantic reference to another [`Specification`]({% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %}) described by [`SpecificationRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/SpecificationRelationship.md %})::`type` and [`SpecificationRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/SpecificationRelationship.md %})::`idRef`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SpecificationRelationshipTypeEnum.md %}"><code>SpecificationRelationshipTypeEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

specifies how the [`Specification`]({% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %}) is related. The `type` **MUST** be specified

</td>
</tr>
</tbody></table>
