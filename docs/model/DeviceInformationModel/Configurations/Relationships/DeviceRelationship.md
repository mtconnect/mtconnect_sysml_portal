---
title: "DeviceRelationship"
parent: "Relationships Package"
grand_parent: "Configurations Package"
nav_order: 4
layout: default
---

# DeviceRelationship

**Supertype:** `ConfigurationRelationship`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |  2.6 (Previous: [2.5](https://model.mtconnect.org/versions/2.5/devicerelationship)) |

[`ConfigurationRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/ConfigurationRelationship.md %}) that describes the association between a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) or an [`Asset`]({% link model/AssetInformationModel/Asset.md %}) and a [`Device`]({% link model/DeviceInformationModel/Device.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>deviceUuidRef</code></td><td><code>UUID</code></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

reference to the [`Device`]({% link model/DeviceInformationModel/Device.md %})::`uuid` of the associated piece of equipment. 

</td>
</tr>
<tr><td><code>href</code></td><td><code>xlinkhref</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

*URI* identifying the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> that is publishing information for the associated piece of equipment.  

</td>
</tr>
<tr><td><code>role</code></td><td><a href="{% link model/Profile/DataTypes/RoleTypeEnum.md %}"><code>RoleTypeEnum</code></a></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

defines the services or capabilities that the referenced piece of equipment provides relative to this piece of equipment. 

</td>
</tr>
<tr><td><code>xlink:type</code></td><td><code>xlinktype</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

`xlink:type`**MUST** have a fixed value of `locator` as defined in W3C XLink 1.1 <em>https://www.w3.org/TR/xlink11/</em>. 

</td>
</tr>
</tbody></table>
