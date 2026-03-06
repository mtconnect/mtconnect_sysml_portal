---
title: "Reference"
parent: "References Package"
grand_parent: "Device Information Model Package"
nav_order: 3
layout: default
---

# Reference
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

pointer to information that is associated with another entity defined elsewhere in the [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity for a piece of equipment.

### Description

[`Reference`]({% link model/DeviceInformationModel/References/Reference.md %}) is an abstract entity and will be realized by a specific [`Reference`]({% link model/DeviceInformationModel/References/Reference.md %}) type for an [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity. See *Section ComponentRef* and *Section DataItemRef*.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>idRef</code></td><td><code>ID</code></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

pointer to the `id` of an entity that contains the information to be associated with this entity. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 name of an element or a piece of equipment. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isReferenceOf</code></td><td><a href="{% link model/DeviceInformationModel/Components/Component.md %}"><code>Component</code></a></td><td>1.3</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ComponentRef`]({% link model/DeviceInformationModel/References/ComponentRef.md %}) | 1.4 |  |
| [`DataItemRef`]({% link model/DeviceInformationModel/References/DataItemRef.md %}) | 1.4 |  |

