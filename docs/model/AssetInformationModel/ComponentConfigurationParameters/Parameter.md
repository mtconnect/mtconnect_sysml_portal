---
title: "Parameter"
parent: "Component Configuration Parameters Package"
grand_parent: "Asset Information Model Package"
nav_order: 2
layout: default
---

# Parameter
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |  2.4 (Previous: [2.3](https://model.mtconnect.org/versions/2.3/parameter)) |

property that determines the characteristic or behavior of an entity.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>identifier</code></td><td><code>string</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

internal identifier, register, or address. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

descriptive name. 

</td>
</tr>
<tr><td><code>minimum</code></td><td><code>double</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

minimal allowed value. 

</td>
</tr>
<tr><td><code>maximum</code></td><td><code>double</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

maximum allowed value. 

</td>
</tr>
<tr><td><code>nominal</code></td><td><code>double</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

nominal value. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>string</code></td><td>2.2</td><td></td><td>1</td>
<td markdown="block">

configured value. 

</td>
</tr>
<tr><td><code>units</code></td><td><code>string</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

engineering units.

[`Parameter`]({% link model/AssetInformationModel/ComponentConfigurationParameters/Parameter.md %})::`units` **SHOULD** be SI or MTConnect Units. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isParameterOf</code></td><td><a href="{% link model/AssetInformationModel/ComponentConfigurationParameters/ParameterSet.md %}"><code>ParameterSet</code></a></td><td>2.2</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
