---
title: "ParameterSet"
parent: "Component Configuration Parameters Package"
grand_parent: "Asset Information Model Package"
nav_order: 3
layout: default
---

# ParameterSet
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.2 |  |  2.3 (Previous: [2.2](https://model.mtconnect.org/versions/2.2/parameterset)) |

set of [`Parameter`]({% link model/AssetInformationModel/ComponentConfigurationParameters/Parameter.md %})s.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>name</code></td><td><code>string</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

name of the parameter set if more than one exists. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasParameter</code></td><td><a href="{% link model/AssetInformationModel/ComponentConfigurationParameters/Parameter.md %}"><code>Parameter</code></a></td><td>2.2</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isParameterSetOf</code></td><td><a href="{% link model/AssetInformationModel/ComponentConfigurationParameters/ComponentConfigurationParameters.md %}"><code>ComponentConfigurationParameters</code></a></td><td>2.2</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
