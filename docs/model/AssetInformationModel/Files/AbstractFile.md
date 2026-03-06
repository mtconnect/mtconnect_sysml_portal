---
title: "AbstractFile"
parent: "Files Package"
grand_parent: "Asset Information Model Package"
nav_order: 1
layout: default
---

# AbstractFile

**Supertype:** `Asset`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

abstract [`Asset`]({% link model/AssetInformationModel/Asset.md %}) that contains the common properties of the [`File`]({% link model/AssetInformationModel/Files/File.md %}) and [`FileArchetype`]({% link model/AssetInformationModel/Files/FileArchetype.md %}) types.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

name of the file. 

</td>
</tr>
<tr><td><code>mediaType</code></td><td><code>string</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

mime type of the file. 

</td>
</tr>
<tr><td><code>applicationCategory</code></td><td><a href="{% link model/Profile/DataTypes/ApplicationCategoryEnum.md %}"><code>ApplicationCategoryEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

category of application that will use this file. 

</td>
</tr>
<tr><td><code>applicationType</code></td><td><a href="{% link model/Profile/DataTypes/ApplicationTypeEnum.md %}"><code>ApplicationTypeEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

type of application that will use this file. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasFileProperty</code></td><td><a href="{% link model/AssetInformationModel/Files/FileProperty.md %}"><code>FileProperty</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasFileComment</code></td><td><a href="{% link model/AssetInformationModel/Files/FileComment.md %}"><code>FileComment</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`File`]({% link model/AssetInformationModel/Files/File.md %}) | 1.7 |  |
| [`FileArchetype`]({% link model/AssetInformationModel/Files/FileArchetype.md %}) | 1.7 |  |

