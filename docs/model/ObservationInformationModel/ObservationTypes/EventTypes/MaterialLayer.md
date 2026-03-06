---
title: "MaterialLayer"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 171
layout: default
---

# MaterialLayer

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |   |

identifies the layers of material applied to a part or product as part of an additive manufacturing process.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>result</code></td><td><code>integer</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Material.Electrode`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/MaterialElectrode.md %}) | 2.7 |  |
| [`Material.Filler`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/MaterialFiller.md %}) | 2.7 |  |
| [`Material.Gas`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/MaterialGas.md %}) | 2.7 |  |
| [`MaterialLayer.Actual`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/MaterialLayerActual.md %}) | 1.5 |  |
| [`MaterialLayer.Target`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/MaterialLayerTarget.md %}) | 1.5 |  |

