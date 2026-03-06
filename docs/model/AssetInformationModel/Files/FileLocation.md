---
title: "FileLocation"
parent: "Files Package"
grand_parent: "Asset Information Model Package"
nav_order: 9
layout: default
---

# FileLocation
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

*URL* reference to the file location. 

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>href</code></td><td><code>xlinkhref</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

*URL* reference to the file.

`href` is of type `xlink:href` from the W3C XLink specification. 

</td>
</tr>
<tr><td><code>xlink:type</code></td><td><code>xlinktype</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

type of href for the xlink href type. 

**MUST** be `locator` referring to a *URL*. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isLocationOf</code></td><td><a href="{% link model/AssetInformationModel/Files/File.md %}"><code>File</code></a></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
