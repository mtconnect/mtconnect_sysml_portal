---
title: "FileComment"
parent: "Files Package"
grand_parent: "Asset Information Model Package"
nav_order: 6
layout: default
---

# FileComment
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

remark or interpretation for human interpretation associated with a [`File`]({% link model/AssetInformationModel/Files/File.md %}) or [`FileArchetype`]({% link model/AssetInformationModel/Files/FileArchetype.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>timestamp</code></td><td><code>datetime</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

time the comment was made. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>string</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

text of the comment about the file. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isFileCommentOf</code></td><td><a href="{% link model/AssetInformationModel/Files/AbstractFile.md %}"><code>AbstractFile</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
