---
title: "Destination"
parent: "Files Package"
grand_parent: "Asset Information Model Package"
nav_order: 2
layout: default
---

# Destination
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

reference to the target [`Device`]({% link model/DeviceInformationModel/Device.md %}) for this [`File`]({% link model/AssetInformationModel/Files/File.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>deviceUuid</code></td><td><code>UUID</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

`uuid` of the target device or application. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isDestinationOf</code></td><td><a href="{% link model/AssetInformationModel/Files/File.md %}"><code>File</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
