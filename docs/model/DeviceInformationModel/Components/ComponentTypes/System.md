---
title: "System"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 89
layout: default
---

# System

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

abstract [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that is permanently integrated into the piece of equipment.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isSystemOf</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>1.1</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Systems`)

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Actuator`]({% link model/DeviceInformationModel/Components/ComponentTypes/Actuator.md %}) | 1.1 |  |
| [`AirHandler`]({% link model/DeviceInformationModel/Components/ComponentTypes/AirHandler.md %}) | 2.3 |  |
| [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) | 1.0 |  |
| [`Coolant`]({% link model/DeviceInformationModel/Components/ComponentTypes/Coolant.md %}) | 1.2 |  |
| [`Cooling`]({% link model/DeviceInformationModel/Components/ComponentTypes/Cooling.md %}) | 1.7 |  |
| [`Dielectric`]({% link model/DeviceInformationModel/Components/ComponentTypes/Dielectric.md %}) | 1.4 |  |
| [`Electric`]({% link model/DeviceInformationModel/Components/ComponentTypes/Electric.md %}) | 1.1 |  |
| [`Enclosure`]({% link model/DeviceInformationModel/Components/ComponentTypes/Enclosure.md %}) | 1.4 |  |
| [`EndEffector`]({% link model/DeviceInformationModel/Components/ComponentTypes/EndEffector.md %}) | 1.5 |  |
| [`Feeder`]({% link model/DeviceInformationModel/Components/ComponentTypes/Feeder.md %}) | 1.4 |  |
| [`Heating`]({% link model/DeviceInformationModel/Components/ComponentTypes/Heating.md %}) | 1.7 |  |
| [`Lubrication`]({% link model/DeviceInformationModel/Components/ComponentTypes/Lubrication.md %}) | 1.1 |  |
| [`PinTool`]({% link model/DeviceInformationModel/Components/ComponentTypes/PinTool.md %}) | 2.7 |  |
| [`Pressure`]({% link model/DeviceInformationModel/Components/ComponentTypes/Pressure.md %}) | 1.1 |  |
| [`ProcessPower`]({% link model/DeviceInformationModel/Components/ComponentTypes/ProcessPower.md %}) | 1.4 |  |
| [`Protective`]({% link model/DeviceInformationModel/Components/ComponentTypes/Protective.md %}) | 1.4 |  |
| [`ToolHolder`]({% link model/DeviceInformationModel/Components/ComponentTypes/ToolHolder.md %}) | 2.7 |  |
| [`Vacuum`]({% link model/DeviceInformationModel/Components/ComponentTypes/Vacuum.md %}) | 1.7 |  |
| [`WorkEnvelope`]({% link model/DeviceInformationModel/Components/ComponentTypes/WorkEnvelope.md %}) | 1.6 |  |

