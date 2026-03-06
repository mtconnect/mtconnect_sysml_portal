---
title: "Agent"
parent: "Devices Package"
grand_parent: "Components Package"
nav_order: 1
layout: default
---

# Agent

**Supertype:** `Device`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`Device`]({% link model/DeviceInformationModel/Device.md %}) composed of an <span class="hoverterm">MTConnect Agent<span class="definition" data-term="MTConnect Agent">*agent* for the *MTConnect Information Model*.</span></span> and all its connected data sources.

### Description

An [`Agent`]({% link model/DeviceInformationModel/Components/Devices/Agent.md %}) **MUST** be provided by all <span class="hoverterm">MTConnect Agent<span class="definition" data-term="MTConnect Agent">*agent* for the *MTConnect Information Model*.</span></span> implementations.

An [`Agent`]({% link model/DeviceInformationModel/Components/Devices/Agent.md %}) **MUST** provide notifications when devices are added or changed.

An [`Agent`]({% link model/DeviceInformationModel/Components/Devices/Agent.md %}) **MUST** provide connection information for each data source currently supplying data to the <span class="hoverterm">MTConnect Agent<span class="definition" data-term="MTConnect Agent">*agent* for the *MTConnect Information Model*.</span></span>.

An [`Agent`]({% link model/DeviceInformationModel/Components/Devices/Agent.md %}) **MAY** provide information about telemetry relating to data sources.

An [`Agent`]({% link model/DeviceInformationModel/Components/Devices/Agent.md %}) **MAY** provide information about the <span class="hoverterm">MTConnect Agent<span class="definition" data-term="MTConnect Agent">*agent* for the *MTConnect Information Model*.</span></span> resource utilization.
