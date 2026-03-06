---
title: "Hardware"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 130
layout: default
---

# Hardware

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

hardware of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

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
| [`Hardware.InstallDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardwareInstallDate.md %}) | 1.6 |  |
| [`Hardware.License`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardwareLicense.md %}) | 1.6 |  |
| [`Hardware.Manufacturer`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardwareManufacturer.md %}) | 1.6 |  |
| [`Hardware.Model`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardwareModel.md %}) | 2.3 |  |
| [`Hardware.ReleaseDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardwareReleaseDate.md %}) | 1.6 |  |
| [`Hardware.Version`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/HardwareVersion.md %}) | 1.6 |  |

