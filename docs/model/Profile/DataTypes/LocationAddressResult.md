---
title: "LocationAddressResult"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 64
layout: default
---

# LocationAddressResult

**Supertype:** `DataSet`

**Stereotypes:** `<<valueType>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.3 |  |   |

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>GivenName</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element specifying the name used to distinguish between persons having the same surname(s) and who may have access to a particular delivery point. 

</td>
</tr>
<tr><td><code>Surname</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element which identifies the family or parentage of an individual. 

</td>
</tr>
<tr><td><code>Qualification</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element indicating an individual’s professional or academic qualification or rank in a professional group or society (e.g. PhD, Fellow of the Royal Society, FRS, Barrister at Law). 

</td>
</tr>
<tr><td><code>NameQualifier</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element used in some countries to distinguish between persons with the same surname(s) who have similar given names or initials (e.g.III, Senior, the Third.). 

</td>
</tr>
<tr><td><code>OrganizationName</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element giving the official name, the registered business name or other official designation of an organization. 

</td>
</tr>
<tr><td><code>LegalStatus</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element indicating the formal registration of an organization (e.g. GmbH, Inc., Ltd.). 

</td>
</tr>
<tr><td><code>OrganizationUnit</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element identifying a subdivision of an organization. 

</td>
</tr>
<tr><td><code>Building</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element identifying the number or name and type of the edifice or construction in or adjacent to which a delivery point is located. 

</td>
</tr>
<tr><td><code>Floor</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element indicating the floor or level on which a delivery point is located in a multi-story building. 

</td>
</tr>
<tr><td><code>Door</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element indicating the apartment, room or office in, at or adjacent to which a delivery point, situated within a building, is located. 

</td>
</tr>
<tr><td><code>Thoroughfare</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element which identifies the road or part of a road or other access route along which a delivery point can be accessed, either directly or via a secondary or tertiary road or access route. 

</td>
</tr>
<tr><td><code>PremiseIdentifier</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element designating the area or the object on an area, adjacent to thoroughfare, in which the delivery point or delivery point access is located. 

</td>
</tr>
<tr><td><code>Town</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element indicating the name of the populated place in which a delivery point is located, or the populated. 

</td>
</tr>
<tr><td><code>Region</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element specifying the geographic or administrative area of the country in which the town is situated. 

</td>
</tr>
<tr><td><code>District</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element indicating the name of the area within or adjacent to the town in which a delivery point is located, or via which it is accessed. 

</td>
</tr>
<tr><td><code>CountryName</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element designating the country, dependency or area of geopolitical interest, in which a delivery point is located or via which the delivery point is accessed. 

</td>
</tr>
<tr><td><code>CountryCode</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

interest, in which a delivery point is located or via which the delivery point is accessed. 

</td>
</tr>
<tr><td><code>PostCode</code></td><td><code>string</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

element designating the code used for the sorting of mail. 

</td>
</tr>
</tbody></table>
