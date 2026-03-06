---
title: "AssetCount"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 26
layout: default
---

# AssetCount

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.0 |  |   |

<span class="hoverterm">data set<span class="definition" data-term="data set">*key-value pairs* where each entry is uniquely identified by the *key*.</span></span> of the number of <span class="hoverterm">Assets<span class="definition" data-term="Asset">*asset* that is used by the manufacturing process to perform tasks.

> Note 1 to entry: An *Asset* relies upon an *Device* to provide *observations* and information about itself and the *Device* revises the information to reflect changes to the *Asset* during their interaction. Examples of *Assets* are cutting tools, Part Information, Manufacturing Processes, Fixtures, and Files.

> Note 2 to entry: A singular [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` uniquely identifies an *Asset* throughout its lifecycle and is used to track and relate the *Asset* to other *Devices* and entities.

> Note 3 to entry: *Assets* are temporally associated with a device and can be removed from the device without damage or alteration to its primary functions.

</span></span> of a given type for a <span class="hoverterm">Device<span class="definition" data-term="Device">*Component* not belonging to any *Component* that may have *assets*</span></span>.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>result</code></td><td><code>integer</code></td><td>2.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
