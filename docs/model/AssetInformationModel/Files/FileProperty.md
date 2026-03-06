---
title: "FileProperty"
parent: "Files Package"
grand_parent: "Asset Information Model Package"
nav_order: 11
layout: default
---

# FileProperty
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

key-value pair providing additional metadata about a [`File`]({% link model/AssetInformationModel/Files/File.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

name of the [`FileProperty`]({% link model/AssetInformationModel/Files/FileProperty.md %}). 

</td>
</tr>
<tr><td><code>value</code></td><td><code>string</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

The value of the [`FileProperty`]({% link model/AssetInformationModel/Files/FileProperty.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isFilePropertyOf</code></td><td><a href="{% link model/AssetInformationModel/Files/AbstractFile.md %}"><code>AbstractFile</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
