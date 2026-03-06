---
title: "Structure"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 87
layout: default
---

# Structure

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) composed of part(s) comprising the rigid bodies of the piece of equipment.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isStructureOf</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Structures`)

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Link`]({% link model/DeviceInformationModel/Components/ComponentTypes/Link.md %}) | 1.7 |  |

