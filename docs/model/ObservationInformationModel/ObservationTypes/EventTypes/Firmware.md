---
title: "Firmware"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 114
layout: default
---

# Firmware

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

embedded software of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

 The `subType` **MUST** be specified

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Firmware.InstallDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/FirmwareInstallDate.md %}) | 1.6 |  |
| [`Firmware.License`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/FirmwareLicense.md %}) | 1.6 |  |
| [`Firmware.Manufacturer`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/FirmwareManufacturer.md %}) | 1.6 |  |
| [`Firmware.ReleaseDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/FirmwareReleaseDate.md %}) | 1.6 |  |
| [`Firmware.Version`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/FirmwareVersion.md %}) | 1.6 |  |

