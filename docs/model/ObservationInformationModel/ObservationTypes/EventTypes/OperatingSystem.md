---
title: "OperatingSystem"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 188
layout: default
---

# OperatingSystem

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

Operating System (OS) of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

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
| [`OperatingSystem.InstallDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/OperatingSystemInstallDate.md %}) | 1.6 |  |
| [`OperatingSystem.License`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/OperatingSystemLicense.md %}) | 1.6 |  |
| [`OperatingSystem.Manufacturer`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/OperatingSystemManufacturer.md %}) | 1.6 |  |
| [`OperatingSystem.ReleaseDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/OperatingSystemReleaseDate.md %}) | 1.6 |  |
| [`OperatingSystem.Version`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/OperatingSystemVersion.md %}) | 1.6 |  |

