---
title: "AbstractDataItemRelationship"
parent: "Relationship Types for DataItem Package"
grand_parent: "Properties of DataItem Package"
nav_order: 1
layout: default
---

# AbstractDataItemRelationship
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

association between a [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) and another entity.

### Description

[`AbstractDataItemRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/AbstractDataItemRelationship.md %}) is an abstract entity and hence will be realized by specific [`AbstractDataItemRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/AbstractDataItemRelationship.md %}) types in an [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity. See `Relationship Types for DataItem`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>idRef</code></td><td><code>ID</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

reference to the related entity's `id`. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

descriptive name associated with this [`AbstractDataItemRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/AbstractDataItemRelationship.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isRelationshipOf</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/DataItem.md %}"><code>DataItem</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`DataItemRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/DataItemRelationship.md %}) | 1.7 |  |
| [`SpecificationRelationship`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/SpecificationRelationship.md %}) | 1.7 |  |

