---
title: "ScaleDataSet"
parent: "SolidModel Package"
grand_parent: "Configurations Package"
nav_order: 4
layout: default
---

# ScaleDataSet

**Supertype:** `DataSet`, `AbstractScale`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.5 |  |  2.7 (Previous: [2.6](https://model.mtconnect.org/versions/2.6/scaledataset)) |

either a single multiplier applied to all three dimensions or a three space multiplier given in the X, Y, and Z dimensions in the coordinate system used for the [`SolidModel`]({% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}) represented as a dataset.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>X</code></td><td><code>float</code></td><td>2.5</td><td></td><td>0..1</td>
<td markdown="block">

multiplier for X axis. 

</td>
</tr>
<tr><td><code>Y</code></td><td><code>float</code></td><td>2.5</td><td></td><td>0..1</td>
<td markdown="block">

multiplier for Y axis. 

</td>
</tr>
<tr><td><code>Z</code></td><td><code>float</code></td><td>2.5</td><td></td><td>0..1</td>
<td markdown="block">

multiplier for Z axis. 

</td>
</tr>
</tbody></table>
