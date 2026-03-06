---
title: "Entry"
parent: "Representations Package"
grand_parent: "Observation Information Model Package"
nav_order: 4
layout: default
---

# Entry

**Stereotypes:** `<<ImplementationFormat>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |  2.4 (Previous: [2.3](https://model.mtconnect.org/versions/2.3/entry)) |

<span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span> published as part of a [`DataSet`]({% link model/ReferenceAgentArchitecture/InformationModel/DataSet.md %}).

### Constraints for Entry Values


The value of each [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) **MUST** have the same restrictions as the value of an <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> with [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` as `VALUE`.

An [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) **MAY** be further constrained by the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) definition (see `Device Information Model`), for example a `VariableDataSet` having a string value **MAY** have a floating-point [`Temperature`]({% link model/WIPDeviceExamples/MillwSmoothG/Representation/Temperature.md %}) value. A restriction **MUST NOT** be broadened or removed, for example, the value "READY" **MUST NOT** occur with a `TemperatureDataSet` constrained to floating-point numbers.

[`EntryDefinition`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/EntryDefinition.md %}) **MAY** provide the type and units of an [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %})::`key`.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>key</code></td><td><code>ID</code></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

unique identifier for each <span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span>. 

</td>
</tr>
<tr><td><code>removed</code></td><td><code>boolean</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

removal indicator of a <span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span>. 

</td>
</tr>
<tr><td><code>result</code></td><td><code>string</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

value of the [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isEntryOf</code></td><td><a href="{% link model/ObservationInformationModel/Representations/DataSet.md %}"><code>DataSet</code></a></td><td>1.5</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
