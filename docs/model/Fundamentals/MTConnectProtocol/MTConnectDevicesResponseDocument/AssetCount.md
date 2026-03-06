---
title: "AssetCount"
parent: "MTConnectDevices Response Document Package"
grand_parent: "MTConnect Protocol Package"
nav_order: 1
layout: default
---

# AssetCount
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 | 1.4 |   |

count of each asset type currently in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>assetType</code></s></td><td><code>string</code></td><td>1.2</td><td>1.4</td><td>1</td>
<td markdown="block">

type of <span class="hoverterm">Asset<span class="definition" data-term="Asset">*asset* that is used by the manufacturing process to perform tasks.

> Note 1 to entry: An *Asset* relies upon an *Device* to provide *observations* and information about itself and the *Device* revises the information to reflect changes to the *Asset* during their interaction. Examples of *Assets* are cutting tools, Part Information, Manufacturing Processes, Fixtures, and Files.

> Note 2 to entry: A singular [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` uniquely identifies an *Asset* throughout its lifecycle and is used to track and relate the *Asset* to other *Devices* and entities.

> Note 3 to entry: *Assets* are temporally associated with a device and can be removed from the device without damage or alteration to its primary functions.

</span></span>. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>isAssetCountOf</code></s></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/Header.md %}"><code>Header</code></a></td><td>1.2</td><td>1.4</td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
