---
title: "ImageFile"
parent: "ImageFiles Package"
grand_parent: "Configurations Package"
nav_order: 1
layout: default
---

# ImageFile
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |   |

reference to a file containing an image of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>id</code></td><td><code>ID</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

unique identifier of the image file. 

</td>
</tr>
<tr><td><code>href</code></td><td><code>string</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

*URL* giving the location of the image file. 

</td>
</tr>
<tr><td><code>mediaType</code></td><td><code>string</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

mime type of the image file. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

description of the image file. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isImageFileOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Configuration.md %}"><code>Configuration</code></a></td><td>2.2</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
