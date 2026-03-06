---
title: "QIFDocumentWrapper"
parent: "QIF Package"
grand_parent: "Asset Information Model Package"
nav_order: 3
layout: default
---

# QIFDocumentWrapper

**Supertype:** `Asset`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

[`Asset`]({% link model/AssetInformationModel/Asset.md %}) that carries the QIF Document.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>qifDocumentType</code></td><td><a href="{% link model/Profile/DataTypes/QIFDocumentTypeEnum.md %}"><code>QIFDocumentTypeEnum</code></a></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

contained QIF Document type as defined in the *QIF* Standard. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasQIFDocument</code></td><td><a href="{% link model/AssetInformationModel/QIF/QIFDocument.md %}"><code>QIFDocument</code></a></td><td>1.8</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
