---
title: "ComponentRelationship"
parent: "Relationships Package"
grand_parent: "Configurations Package"
nav_order: 2
layout: default
---

# ComponentRelationship

**Supertype:** `ConfigurationRelationship`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |  2.6 (Previous: [2.5](https://model.mtconnect.org/versions/2.5/componentrelationship)) |

[`ConfigurationRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/ConfigurationRelationship.md %}) that describes the association between a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) or an [`Asset`]({% link model/AssetInformationModel/Asset.md %}) and another [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>idRef</code></td><td><code>ID</code></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

reference to the associated [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). 

</td>
</tr>
</tbody></table>
