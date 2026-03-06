---
title: "InitialValue"
parent: "Properties of DataItem Package"
grand_parent: "DataItems Package"
nav_order: 9
layout: default
---

# InitialValue
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

starting value for a [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) as well as the value to be set for the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) after a reset event.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>value</code></td><td><code>string</code></td><td>1.4</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isInitialValueOf</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/DataItem.md %}"><code>DataItem</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
