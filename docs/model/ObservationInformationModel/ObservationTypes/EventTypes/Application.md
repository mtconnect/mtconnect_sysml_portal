---
title: "Application"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 18
layout: default
---

# Application

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

application on a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

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
| [`Application.InstallDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ApplicationInstallDate.md %}) | 1.6 |  |
| [`Application.License`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ApplicationLicense.md %}) | 1.6 |  |
| [`Application.Manufacturer`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ApplicationManufacturer.md %}) | 1.6 |  |
| [`Application.ReleaseDate`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ApplicationReleaseDate.md %}) | 1.6 |  |
| [`Application.Version`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ApplicationVersion.md %}) | 1.6 |  |

