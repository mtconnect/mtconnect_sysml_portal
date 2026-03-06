---
title: "File"
parent: "Files Package"
grand_parent: "Asset Information Model Package"
nav_order: 4
layout: default
---

# File

**Supertype:** `AbstractFile`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`AbstractFile`]({% link model/AssetInformationModel/Files/AbstractFile.md %}) type that provides information about the [`File`]({% link model/AssetInformationModel/Files/File.md %}) instance and its *URL*.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>size</code></td><td><code>integer</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

size of the file in bytes. 

</td>
</tr>
<tr><td><code>versionId</code></td><td><code>string</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

version identifier of the file. 

</td>
</tr>
<tr><td><code>state</code></td><td><a href="{% link model/Profile/DataTypes/FileStateEnum.md %}"><code>FileStateEnum</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

state of the file.  

</td>
</tr>
<tr><td><code>Signature</code></td><td><code>x509</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

secure hash of the file. 

</td>
</tr>
<tr><td><code>PublicKey</code></td><td><code>x509</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

public key used to verify the signature. 

</td>
</tr>
<tr><td><code>CreationTime</code></td><td><code>datetime</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

time the file was created. 

</td>
</tr>
<tr><td><code>ModificationTime</code></td><td><code>datetime</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

time the file was modified. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasLocation</code></td><td><a href="{% link model/AssetInformationModel/Files/FileLocation.md %}"><code>FileLocation</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasDestination</code></td><td><a href="{% link model/AssetInformationModel/Files/Destination.md %}"><code>Destination</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
