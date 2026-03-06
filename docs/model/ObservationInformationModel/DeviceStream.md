---
title: "DeviceStream"
parent: "Observation Information Model Package"
nav_order: 7
layout: default
---

# DeviceStream
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

<span class="hoverterm">organizes<span class="definition" data-term="organize">act of containing and owning one or more elements.</span></span> data reported from a [`Device`]({% link model/DeviceInformationModel/Device.md %}).

### Description

[`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %}) **MUST** be provided for each [`Device`]({% link model/DeviceInformationModel/Device.md %}) reporting data in an <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>.

If the response to the request for data from an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> does not contain any data for a specific [`Device`]({% link model/DeviceInformationModel/Device.md %}), an empty [`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %}) entity **MAY** be created to indicate that the [`Device`]({% link model/DeviceInformationModel/Device.md %}) exists, but there was no data available.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

name of the [`Device`]({% link model/DeviceInformationModel/Device.md %}).

The value reported for [`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %})::`name` **MUST** be the same as the value defined for the [`Device`]({% link model/DeviceInformationModel/Device.md %})::`name` in the <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span>. 

</td>
</tr>
<tr><td><code>uuid</code></td><td><code>UUID</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

uuid of the [`Device`]({% link model/DeviceInformationModel/Device.md %}).  The value reported for [`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %})::`uuid` **MUST** be the same as the value defined for the [`Device`]({% link model/DeviceInformationModel/Device.md %})::`uuid` of the same [`Device`]({% link model/DeviceInformationModel/Device.md %}) in the <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span>. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasComponentStream</code></td><td><a href="{% link model/ObservationInformationModel/ComponentStream.md %}"><code>ComponentStream</code></a></td><td>1.0</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isDeviceStreamOf</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}"><code>MTConnectStreams</code></a></td><td>1.0</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
