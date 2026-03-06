---
title: "Depth"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 88
layout: default
---

# Depth

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

dimension or distance as measured downwards from the top

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><code>float</code></td><td>2.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Depth.Cut`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DepthCut.md %}) | 2.7 |  |
| [`Depth.Layer`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DepthLayer.md %}) | 2.7 |  |
| [`Depth.Peck`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DepthPeck.md %}) | 2.7 |  |
| [`Depth.Plunge`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DepthPlunge.md %}) | 2.7 |  |

