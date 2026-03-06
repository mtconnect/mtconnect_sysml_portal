---
title: "PowerSource"
parent: "PowerSources Package"
grand_parent: "Configurations Package"
nav_order: 1
layout: default
---

# PowerSource
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.3 |  |   |

potential energy sources for the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/PowerSourceTypeEnum.md %}"><code>PowerSourceTypeEnum</code></a></td><td>2.3</td><td></td><td>1</td>
<td markdown="block">

type of the power source. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>id</code></td><td><code>ID</code></td><td>2.3</td><td></td><td>1</td>
<td markdown="block">

unique identifier for the power source. 

</td>
</tr>
<tr><td><code>componentIdRef</code></td><td><code>ID</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

reference to the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) providing observations about the power source. 

</td>
</tr>
<tr><td><code>order</code></td><td><code>integer</code></td><td>2.3</td><td></td><td>0..1</td>
<td markdown="block">

optional precedence for a given power source. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>string</code></td><td>2.3</td><td></td><td>1</td>
<td markdown="block">

name of the power source. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isPowerSourceOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Configuration.md %}"><code>Configuration</code></a></td><td>2.3</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
