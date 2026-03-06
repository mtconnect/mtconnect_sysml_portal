---
title: "Adapter"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 3
layout: default
---

# Adapter

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that provides information about the data source for an <span class="hoverterm">MTConnect Agent<span class="definition" data-term="MTConnect Agent">*agent* for the *MTConnect Information Model*.</span></span>.

### Description

It **MAY** contain connectivity state of the data source and additional telemetry about the data source and source-specific information.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isAdapterOf</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Adapters`)

</td>
</tr>
</tbody></table>
