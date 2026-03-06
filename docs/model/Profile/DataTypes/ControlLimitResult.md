---
title: "ControlLimitResult"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 31
layout: default
---

# ControlLimitResult

**Supertype:** `DataSet`

**Stereotypes:** `<<valueType>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>UpperLimit</code></td><td><code>float</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

upper conformance boundary for a variable.

> Note: immediate concern or action may be required.

 

</td>
</tr>
<tr><td><code>UpperWarning</code></td><td><code>float</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

upper boundary indicating increased concern and supervision may be required. 

</td>
</tr>
<tr><td><code>Nominal</code></td><td><code>float</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

ideal or desired value for a variable. 

</td>
</tr>
<tr><td><code>LowerWarning</code></td><td><code>float</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

lower boundary indicating increased concern and supervision may be required. 

</td>
</tr>
<tr><td><code>LowerLimit</code></td><td><code>float</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

lower conformance boundary for a variable.

> Note: immediate concern or action may be required.

 

</td>
</tr>
</tbody></table>
