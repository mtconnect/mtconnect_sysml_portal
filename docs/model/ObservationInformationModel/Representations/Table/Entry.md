---
title: "Entry"
parent: "Table Package"
grand_parent: "Representations Package"
nav_order: 3
layout: default
---

# Entry

**Stereotypes:** `<<ImplementationFormat>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |  2.7 (Previous: [2.6](https://model.mtconnect.org/versions/2.6/entry)) |

<span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span> published as part of a [`Table`]({% link model/DeviceInformationModel/Components/ComponentTypes/Table.md %}).


## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>key</code></td><td><code>ID</code></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

unique identifier for each <span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span>. 

</td>
</tr>
<tr><td><code>removed</code></td><td><code>boolean</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

removal indicator of a <span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span>. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><a href="{% link model/ObservationInformationModel/Representations/Table/Cell.md %}"><code>Cell</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isEntryOf</code></td><td><a href="{% link model/ObservationInformationModel/Representations/Table/Table.md %}"><code>Table</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
