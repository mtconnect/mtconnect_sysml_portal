---
title: "Filter"
parent: "Properties of DataItem Package"
grand_parent: "DataItems Package"
nav_order: 8
layout: default
---

# Filter
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

provides a means to control when an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> records updated information for a [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}). 

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/FilterEnum.md %}"><code>FilterEnum</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

type of [`Filter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}). The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>value</code></td><td><code>float</code></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isFilterOf</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/DataItem.md %}"><code>DataItem</code></a></td><td>1.4</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><s><code>isFilterOf</code></s></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Constraints.md %}"><code>Constraints</code></a></td><td>1.3</td><td>1.4</td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`MinimumDeltaFilter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/MinimumDeltaFilter.md %}) | 1.3 |  |
| [`PeriodFilter`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PeriodFilter.md %}) | 1.4 |  |

