---
title: "Definition"
parent: "Properties of DataItem Package"
grand_parent: "DataItems Package"
nav_order: 5
layout: default
---

# Definition
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

defines the meaning of [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) and [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}) entities when the associated [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` is either `DATA_SET` or `TABLE`.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasCellDefinition</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/CellDefinition.md %}"><code>CellDefinition</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasEntryDefinition</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/EntryDefinition.md %}"><code>EntryDefinition</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isDefinitionOf</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/DataItem.md %}"><code>DataItem</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
