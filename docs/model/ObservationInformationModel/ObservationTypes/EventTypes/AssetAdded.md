---
title: "AssetAdded"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 24
layout: default
---

# AssetAdded

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.6 |  |   |

[`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` of the [`Asset`]({% link model/AssetInformationModel/Asset.md %}) that has been added.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>assetType</code></td><td><code>string</code></td><td>2.6</td><td></td><td>0..1</td>
<td markdown="block">

type of [`Asset`]({% link model/AssetInformationModel/Asset.md %}) added. See `Asset Information Model` for details on the [`Asset`]({% link model/AssetInformationModel/Asset.md %}) model. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.6</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hash</code></td><td><code>string</code></td><td>2.6</td><td></td><td>0..1</td>
<td markdown="block">

condensed message digest from a secure one-way hash function. <em>FIPS PUB 180-4</em> 

</td>
</tr>
</tbody></table>
