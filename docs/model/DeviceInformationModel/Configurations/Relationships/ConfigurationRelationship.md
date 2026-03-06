---
title: "ConfigurationRelationship"
parent: "Relationships Package"
grand_parent: "Configurations Package"
nav_order: 3
layout: default
---

# ConfigurationRelationship
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |  2.6 (Previous: [2.5](https://model.mtconnect.org/versions/2.5/configurationrelationship)) |

association between two pieces of equipment or assets that may function independently but together perform a manufacturing operation.

### Description

[`ConfigurationRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/ConfigurationRelationship.md %}) is an abstract entity and hence will be realized by specific [`ConfigurationRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/ConfigurationRelationship.md %}) types in an [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity. See *Section ComponentRelationship* and *Section DeviceRelationship*.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

name associated with this [`ConfigurationRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/ConfigurationRelationship.md %}). 

</td>
</tr>
<tr><td><code>id</code></td><td><code>ID</code></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

unique identifier for this [`ConfigurationRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/ConfigurationRelationship.md %}). 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/RelationshipTypeEnum.md %}"><code>RelationshipTypeEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

defines the authority that this piece of equipment has relative to the associated piece of equipment. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>criticality</code></td><td><a href="{% link model/Profile/DataTypes/CriticalityTypeEnum.md %}"><code>CriticalityTypeEnum</code></a></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

defines whether the services or functions provided by the associated piece of equipment is required for the operation of this piece of equipment. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isRelationshipOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Configuration.md %}"><code>Configuration</code></a></td><td>1.5</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`AssetRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/AssetRelationship.md %}) | 2.1 |  |
| [`ComponentRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/ComponentRelationship.md %}) | 1.5 |  |
| [`DeviceRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/DeviceRelationship.md %}) | 1.5 |  |

