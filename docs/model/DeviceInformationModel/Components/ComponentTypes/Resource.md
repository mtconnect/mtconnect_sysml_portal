---
title: "Resource"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 76
layout: default
---

# Resource

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.4 |  |   |

abstract [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) composed of material or personnel involved in a manufacturing process.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isResourceOf</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>1.4</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Resources`)

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Material`]({% link model/DeviceInformationModel/Components/ComponentTypes/Material.md %}) | 1.8 |  |
| [`Personnel`]({% link model/DeviceInformationModel/Components/ComponentTypes/Personnel.md %}) | 1.4 |  |

