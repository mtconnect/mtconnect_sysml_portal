---
title: "Cell"
parent: "Table Package"
grand_parent: "Representations Package"
nav_order: 1
layout: default
---

# Cell
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |  2.7 (Previous: [2.6](https://model.mtconnect.org/versions/2.6/cell)) |

<span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span> published as part of a `TableEntry`.

### Constraints for Cell Values

#### Constraints for Cell Values

The value of each [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}) **MUST** have the same restrictions as the value of an <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> with [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` as `VALUE`.

An [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}) **MAY** be further constrained by the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) definition (see `Device Information Model`), for example a `VariableDataSet` having a string value **MAY** have a floating-point [`Temperature`]({% link model/WIPDeviceExamples/MillwSmoothG/Representation/Temperature.md %}) value. A restriction **MUST NOT** be broadened or removed, for example, the value `READY` **MUST NOT** occur with a `TemperatureDataSet` constrained limited to floating-point numbers.

[`CellDefinition`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/CellDefinition.md %}) **MAY** provide type and units of a [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %})::`key`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>key</code></td><td><code>ID</code></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

unique identifier for each <span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span>. 

</td>
</tr>
<tr><td><code>result</code></td><td><code>string</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

value of the [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isCellOf</code></td><td><a href="{% link model/ObservationInformationModel/Representations/Table/Entry.md %}"><code>Entry</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
