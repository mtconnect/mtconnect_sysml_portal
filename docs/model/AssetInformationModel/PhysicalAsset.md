---
title: "PhysicalAsset"
parent: "Asset Information Model Package"
nav_order: 15
layout: default
---

# PhysicalAsset

**Supertype:** `Asset`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.5 |  |   |

abstract physical [`Asset`]({% link model/AssetInformationModel/Asset.md %}).

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasMeasurement</code></td><td><a href="{% link model/AssetInformationModel/Pallet/Measurements/Measurement.md %}"><code>Measurement</code></a></td><td>2.5</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Fixture`]({% link model/AssetInformationModel/Fixture/Fixture.md %}) | 2.5 |  |
| [`Pallet`]({% link model/AssetInformationModel/Pallet/Pallet.md %}) | 2.5 |  |

