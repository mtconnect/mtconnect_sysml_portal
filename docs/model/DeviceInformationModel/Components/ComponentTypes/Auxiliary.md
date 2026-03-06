---
title: "Auxiliary"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 7
layout: default
---

# Auxiliary

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

abstract [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) composed of removable part(s) of a piece of equipment that provides supplementary or extended functionality.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isAuxiliaryOf</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>1.4</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Auxiliaries`)

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`CuttingTorch`]({% link model/DeviceInformationModel/Components/ComponentTypes/CuttingTorch.md %}) | 2.6 |  |
| [`Deposition`]({% link model/DeviceInformationModel/Components/ComponentTypes/Deposition.md %}) | 1.5 |  |
| [`Electrode`]({% link model/DeviceInformationModel/Components/ComponentTypes/Electrode.md %}) | 2.6 |  |
| [`Loader`]({% link model/DeviceInformationModel/Components/ComponentTypes/Loader.md %}) | 1.4 |  |
| [`ToolingDelivery`]({% link model/DeviceInformationModel/Components/ComponentTypes/ToolingDelivery.md %}) | 1.4 |  |
| [`WasteDisposal`]({% link model/DeviceInformationModel/Components/ComponentTypes/WasteDisposal.md %}) | 1.4 |  |

