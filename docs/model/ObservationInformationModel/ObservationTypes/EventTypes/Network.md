---
title: "Network"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 178
layout: default
---

# Network

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

network details of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

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
| [`Network.Gateway`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/NetworkGateway.md %}) | 1.6 |  |
| [`Network.IPv4Address`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/NetworkIPv4Address.md %}) | 1.6 |  |
| [`Network.IPv6Address`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/NetworkIPv6Address.md %}) | 1.6 |  |
| [`Network.MacAddress`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/NetworkMacAddress.md %}) | 1.6 |  |
| [`Network.SubnetMask`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/NetworkSubnetMask.md %}) | 1.6 |  |
| [`Network.VLanId`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/NetworkVLanId.md %}) | 1.6 |  |
| [`Network.Wireless`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/NetworkWireless.md %}) | 1.6 |  |

