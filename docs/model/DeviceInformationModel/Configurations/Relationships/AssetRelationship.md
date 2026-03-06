---
title: "AssetRelationship"
parent: "Relationships Package"
grand_parent: "Configurations Package"
nav_order: 1
layout: default
---

# AssetRelationship

**Supertype:** `ConfigurationRelationship`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.1 |  |  2.6 (Previous: [2.5](https://model.mtconnect.org/versions/2.5/assetrelationship)) |

[`ConfigurationRelationship`]({% link model/DeviceInformationModel/Configurations/Relationships/ConfigurationRelationship.md %}) that describes the association between a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) or an [`Asset`]({% link model/AssetInformationModel/Asset.md %}) and another [`Asset`]({% link model/AssetInformationModel/Asset.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>assetIdRef</code></td><td><code>ID</code></td><td>2.1</td><td></td><td>1</td>
<td markdown="block">

uuid of the related [`Asset`]({% link model/AssetInformationModel/Asset.md %}). 

</td>
</tr>
<tr><td><code>assetType</code></td><td><code>string</code></td><td>2.1</td><td></td><td>1</td>
<td markdown="block">

type of [`Asset`]({% link model/AssetInformationModel/Asset.md %}) being referenced. 

</td>
</tr>
<tr><td><code>href</code></td><td><code>xlinkhref</code></td><td>2.1</td><td></td><td>0..1</td>
<td markdown="block">

*URI* reference to the associated [`Asset`]({% link model/AssetInformationModel/Asset.md %}). 

</td>
</tr>
</tbody></table>
