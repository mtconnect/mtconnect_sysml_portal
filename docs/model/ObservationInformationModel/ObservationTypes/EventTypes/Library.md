---
title: "Library"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 139
layout: default
---

# Library

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

software library on a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})

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
| [`Library.InstallDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LibraryInstallDate.md %}) | 1.6 |  |
| [`Library.License`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LibraryLicense.md %}) | 1.6 |  |
| [`Library.Manufacturer`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LibraryManufacturer.md %}) | 1.6 |  |
| [`Library.ReleaseDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LibraryReleaseDate.md %}) | 1.6 |  |
| [`Library.Version`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/LibraryVersion.md %}) | 1.6 |  |

