---
title: "Constraints"
parent: "Properties of DataItem Package"
grand_parent: "DataItems Package"
nav_order: 4
layout: default
---

# Constraints
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

<span class="hoverterm">organizes<span class="definition" data-term="organize">act of containing and owning one or more elements.</span></span> a set of expected values that can be reported for a [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>Maximum</code></td><td><code>float</code></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

numeric upper constraint.

If the data reported for a data item is a range of numeric values, the expected value reported **MAY** be described with an upper limit defined by this constraint. 

</td>
</tr>
<tr><td><code>Minimum</code></td><td><code>float</code></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

numeric lower constraint.

If the data reported for a data item is a range of numeric values, the expected value reported **MAY** be described with a lower limit defined by this constraint. 

</td>
</tr>
<tr><td><code>Nominal</code></td><td><code>float</code></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

numeric target or expected value. 

</td>
</tr>
<tr><td><code>Value</code></td><td><code>string</code></td><td>1.1</td><td></td><td>0..*</td>
<td markdown="block">

single data value that is expected to be reported for a [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}).

[`Constraints`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Constraints.md %})::`Value` **MUST NOT** be used in conjunction with any other `Constraint` elements. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>hasFilter</code></s></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}"><code>Filter</code></a></td><td>1.3</td><td>1.4</td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isConstraintOf</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/DataItem.md %}"><code>DataItem</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
