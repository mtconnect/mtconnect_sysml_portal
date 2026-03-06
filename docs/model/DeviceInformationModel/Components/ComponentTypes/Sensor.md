---
title: "Sensor"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 80
layout: default
---

# Sensor

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

[`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that responds to a physical stimulus and transmits a resulting impulse or value from a sensing unit.

### Description

If modeling individual sensors, then sensor should be associated with the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that the measured value is most closely associated.

When modeled as an [`Auxiliary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Auxiliary.md %}), sensor **SHOULD** represent an integrated <span class="hoverterm">sensor unit<span class="definition" data-term="sensor unit">intelligent piece of equipment that manages the signals of one or more *sensing elements* and provides the measured values.</span></span> system that provides signal processing, conversion, and communications. A <span class="hoverterm">sensor unit<span class="definition" data-term="sensor unit">intelligent piece of equipment that manages the signals of one or more *sensing elements* and provides the measured values.</span></span> may have multiple <span class="hoverterm">sensing elements<span class="definition" data-term="sensing element">mechanism that provides a signal or measured value.</span></span>.

See [`SensorConfiguration`]({% link model/DeviceInformationModel/Configurations/Sensor/SensorConfiguration.md %}) for more details on the use and configuration of a [`Sensor`]({% link model/DeviceInformationModel/Components/ComponentTypes/Sensor.md %}).

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Thermostat`]({% link model/DeviceInformationModel/Components/ComponentTypes/Thermostat.md %}) | 1.0 | 1.2 |
| [`Vibration`]({% link model/DeviceInformationModel/Components/ComponentTypes/Vibration.md %}) | 1.0 | 1.2 |

