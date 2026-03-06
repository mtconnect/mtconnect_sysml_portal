---
title: "Agent"
parent: "REST Protocol Package"
grand_parent: "MTConnect Protocol Package"
nav_order: 1
layout: default
---

# Agent
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.

An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** perform the following tasks:

* Collect data from manufacturing equipment.
* Generate <span class="hoverterm">response documents<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>.
* Provide a REST interface using *HTTP*.

In addition to *XML* and *HTTP*, An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MAY** provide additional protocols and representations. Some representations **MAY** have companion specifications.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>instanceId</code></td><td><code>uint32</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

identifier for an <span class="hoverterm">instance<span class="definition" data-term="instance">describes a set of *streaming data* in an *agent*.  Each time an *agent* is restarted with an empty *buffer*, data placed in the *buffer* represents a new *instance* of the *agent*.</span></span> of the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.
     
[`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`instanceId` **MUST** be changed to a different unique number each time the <span class="hoverterm">buffer<span class="definition" data-term="buffer">section of an *agent* that provides storage for information published from pieces of equipment.</span></span> is cleared and a new set of data begins to be collected. 

</td>
</tr>
<tr><td><code>sequenceNumber</code></td><td><code>uint64</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

<span class="hoverterm">sequence number<span class="definition" data-term="sequence number">primary key identifier used to manage and locate a specific piece of *streaming data* in an *agent*.</span></span>. 

</td>
</tr>
<tr><td><code>bufferSize</code></td><td><code>uint32</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

maximum number of <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> that **MAY** be retained in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> that published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> at any point in time. 

</td>
</tr>
<tr><td><code>maxAssets</code></td><td><code>uint32</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

maximum number of <span class="hoverterm">Assets<span class="definition" data-term="Asset">*asset* that is used by the manufacturing process to perform tasks.

> Note 1 to entry: An *Asset* relies upon an *Device* to provide *observations* and information about itself and the *Device* revises the information to reflect changes to the *Asset* during their interaction. Examples of *Assets* are cutting tools, Part Information, Manufacturing Processes, Fixtures, and Files.

> Note 2 to entry: A singular [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` uniquely identifies an *Asset* throughout its lifecycle and is used to track and relate the *Asset* to other *Devices* and entities.

> Note 3 to entry: *Assets* are temporally associated with a device and can be removed from the device without damage or alteration to its primary functions.

</span></span> that **MAY** be retained in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> that published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> at any point in time. 

</td>
</tr>
<tr><td><code>assetCount</code></td><td><code>uint32</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

current number of <span class="hoverterm">Assets<span class="definition" data-term="Asset">*asset* that is used by the manufacturing process to perform tasks.

> Note 1 to entry: An *Asset* relies upon an *Device* to provide *observations* and information about itself and the *Device* revises the information to reflect changes to the *Asset* during their interaction. Examples of *Assets* are cutting tools, Part Information, Manufacturing Processes, Fixtures, and Files.

> Note 2 to entry: A singular [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` uniquely identifies an *Asset* throughout its lifecycle and is used to track and relate the *Asset* to other *Devices* and entities.

> Note 3 to entry: *Assets* are temporally associated with a device and can be removed from the device without damage or alteration to its primary functions.

</span></span> that are currently stored in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> as of the [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`creationTime` that the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasObservation</code></td><td><a href="{% link model/ObservationInformationModel/Observation.md %}"><code>Observation</code></a></td><td>1.0</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasAsset</code></td><td><a href="{% link model/AssetInformationModel/Asset.md %}"><code>Asset</code></a></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Operations

### probe
#### Description

<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** respond to a successful <span class="hoverterm">probe request<span class="definition" data-term="probe request">*request* to an *agent* to produce an *MTConnectDevices Response Document* containing the *Device Information Model*.</span></span> with an [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity containing either one, when a [`Device`]({% link model/DeviceInformationModel/Device.md %}) `name` or `uuid` is given, or all known [`Device`]({% link model/DeviceInformationModel/Device.md %}) entries.

When successful, an [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity is returned and status code of 200. Otherwise an [`MTConnectError`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/MTConnectError.md %}) and an associated status code."

#### Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

#### Parameters:
<table><thead><tr><th>Name</th><th>Int</th><th>Dep</th><th>Type</th><th>Multiplicity</th><th>Default Value</th><th>Description</th></tr></thead><tbody>
<tr>
<td markdown="block">
device
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
if present, speciﬁes that only the [`Device`]({% link model/DeviceInformationModel/Device.md %}) for the given name or uuid will be returned.
 
If not present,  all associated [`Device`]({% link model/DeviceInformationModel/Device.md %}) for the Agent will be returned.
</td>
</tr>
<tr>
<td markdown="block">
deviceType
</td>
<td markdown="block">
2.3
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
type of [`Device`]({% link model/DeviceInformationModel/Device.md %}).

If present, `Agent::probe::deviceType` **MUST** have a value of `Device` or `Agent`. See `Device Information Model`.
</td>
</tr>
</tbody></table>

#### Results:

<table><thead><tr><th>Name</th><th>Type</th><th>Documentation</th></tr></thead><tbody>
<tr>
<td markdown="block">
status
</td>
<td markdown="block">
`integer`
</td>
<td markdown="block">
<span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span>.

The following <span class="hoverterm">HTTP Status Codes<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> **MUST** be supported as possible responses to a <span class="hoverterm">probe request<span class="definition" data-term="probe request">*request* to an *agent* to produce an *MTConnectDevices Response Document* containing the *Device Information Model*.</span></span>:

* Status Code: `200`, Code Name: `OK`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> succeeded.
  
* Status Code: `400`, Code Name: `Bad Request`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> was invalid. The <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span>  **MUST** have an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.
  
* Status Code: `404`, Code Name: `Not Found`:

  The device name or uuid could not be located. The <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span> **MUST** have an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.
  
* Status Code: `405`, Code Name: `Method Not Allowed`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> specified a method other than `GET`
  
* Status Code: `406`, Code Name: `Not Acceptable`:

  The HTTP `Accept` Header in the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> was not one of the supported representations.
    
* Status Code: `431`, Code Name: `Request Header Fields Too Large`:

  The fields in the <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span> exceed the limit of the implementation of the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.
  
* Status Code: `500`, Code Name: `Internal Server Error`:

  There was an unexpected error in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> while responding to a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.
</td>
</tr>
<tr>
<td markdown="block">
Result
</td>
<td markdown="block">
[`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %})
</td>
<td markdown="block">
<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** respond to a successful <span class="hoverterm">probe request<span class="definition" data-term="probe request">*request* to an *agent* to produce an *MTConnectDevices Response Document* containing the *Device Information Model*.</span></span> with an <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> `200` (`OK`) and an <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span>. If the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> fails, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** respond with an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> an <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> other than 200.

[`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) if successful, [`MTConnectError`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/MTConnectError.md %}) otherwise.
  
</td>
</tr>
</tbody></table>

### current
#### Description

<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** respond to a successful <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span> with an [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) block containing the latest values for the selected <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span>. If the `at` parameter is given, the values for the <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> are a snapshot taken when the `lastSequence` number was equal to the value of the `at` parameter.

When successful, an [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) entity is returned and status code of 200. Otherwise an [`MTConnectError`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/MTConnectError.md %}) and an associated status code."

#### Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

#### Parameters:
<table><thead><tr><th>Name</th><th>Int</th><th>Dep</th><th>Type</th><th>Multiplicity</th><th>Default Value</th><th>Description</th></tr></thead><tbody>
<tr>
<td markdown="block">
device
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
optional [`Device`]({% link model/DeviceInformationModel/Device.md %}) `name` or `uuid`. If not given, all devices are returned.
</td>
</tr>
<tr>
<td markdown="block">
path
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
XPath evaluated against the <span class="hoverterm">Device Information Model<span class="definition" data-term="Device Information Model">*information model* that describes the physical and logical configuration for a piece of equipment and the data that may be reported by that equipment. </span></span> that references the <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> and <span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> to include in the <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>.
  
When a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) element is referenced by the XPath, all <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> for its <span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> and related <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> **MUST** be included in the <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>.

</td>
</tr>
<tr>
<td markdown="block">
<strike>frequency</strike>
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">
1.2
</td>
<td markdown="block">
`int32`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** stream samples and events to the client application pausing for frequency milliseconds between each part. 

**DEPRECATED** Version 1.2, replace by `Agent::current::interval`
</td>
</tr>
<tr>
<td markdown="block">
at
</td>
<td markdown="block">
1.1
</td>
<td markdown="block">

</td>
<td markdown="block">
`uint64`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">
`<last>`
</td>
<td markdown="block">
<span class="hoverterm">response documents<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> **MUST** include <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> consistent with a specific <span class="hoverterm">sequence number<span class="definition" data-term="sequence number">primary key identifier used to manage and locate a specific piece of *streaming data* in an *agent*.</span></span> given by the value of the `at` parameter.

If the value is either less than the `firstSequence` or greater than the `lastSequence`, the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> **MUST** return a 404 <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> and the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> with an `OUT_OF_RANGE` [`Error`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Error.md %})::`errorCode`. 
  
The `at` parameter **MUST NOT** be used in conjunction with the `interval` parameter.

</td>
</tr>
<tr>
<td markdown="block">
interval
</td>
<td markdown="block">
1.2
</td>
<td markdown="block">

</td>
<td markdown="block">
`integer`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">
`null`
</td>
<td markdown="block">
<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** continuously publish <span class="hoverterm">response documents<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> pausing for the number of milliseconds given as the value.

The `interval` value **MUST** be in milliseconds, and **MUST** be a positive integer greater than zero (0). 

The `interval` parameter **MUST NOT** be used in conjunction with the `at` parameter.

</td>
</tr>
<tr>
<td markdown="block">
deviceType
</td>
<td markdown="block">
2.3
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
type of [`Device`]({% link model/DeviceInformationModel/Device.md %}).

If present, `Agent::current::deviceType` **MUST** have a value of `Device` or `Agent`. See `Device Information Model`.
</td>
</tr>
</tbody></table>

#### Results:

<table><thead><tr><th>Name</th><th>Type</th><th>Documentation</th></tr></thead><tbody>
<tr>
<td markdown="block">
status
</td>
<td markdown="block">
`integer`
</td>
<td markdown="block">
<span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span>.

The following <span class="hoverterm">HTTP Status Codes<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> **MUST** be supported as possible responses to a <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span>:

* Status Code: `200`, Code Name: `OK`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> succeeded.
  
* Status Code: `400`, Code Name: `Bad Request`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> was invalid. The <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span>  **MUST** have an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.
  
* Status Code: `404`, Code Name: `Not Found`:

  One of the following conditions apply:
  
  * The device name or uuid could not be located. 
  * The `at` was `OUT_OF_RANGE` range.
  
  The <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span> **MUST** have an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.
  
* Status Code: `405`, Code Name: `Method Not Allowed`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> specified a method other than `GET`
  
* Status Code: `406`, Code Name: `Not Acceptable`:

  The HTTP `Accept` Header in the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> was not one of the supported representations.
    
* Status Code: `431`, Code Name: `Request Header Fields Too Large`:

  The fields in the <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span> exceed the limit of the implementation of the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.
  
* Status Code: `500`, Code Name: `Internal Server Error`:

  There was an unexpected error in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> while responding to a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.
</td>
</tr>
<tr>
<td markdown="block">
Result
</td>
<td markdown="block">
[`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %})
</td>
<td markdown="block">
<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> responds to a <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span> with an <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span> that contains the current value of <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> associated with each piece of <span class="hoverterm">streaming data<span class="definition" data-term="streaming data">*observations* published by a piece of equipment defined by the *equipment metadata*.</span></span> available from the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>, subject to any filtering defined in the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.

</td>
</tr>
</tbody></table>

### sample
#### Description

<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** respond to a successful  <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span> with an [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) entity containing the values for the selected <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> according to the parameters provided.

When successful, an [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) entity is returned and status code of 200. Otherwise an [`MTConnectError`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/MTConnectError.md %}) and an associated status code."

#### Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

#### Parameters:
<table><thead><tr><th>Name</th><th>Int</th><th>Dep</th><th>Type</th><th>Multiplicity</th><th>Default Value</th><th>Description</th></tr></thead><tbody>
<tr>
<td markdown="block">
device
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
optional [`Device`]({% link model/DeviceInformationModel/Device.md %}) `name` or `uuid`. If not given, all devices are returned.
</td>
</tr>
<tr>
<td markdown="block">
path
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
XPath evaluated against the <span class="hoverterm">Device Information Model<span class="definition" data-term="Device Information Model">*information model* that describes the physical and logical configuration for a piece of equipment and the data that may be reported by that equipment. </span></span> that references the <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> and <span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> to include in the <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>.
  
When a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) element is referenced by the XPath, all <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> for its <span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> and related <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> **MUST** be included in the <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>.

</td>
</tr>
<tr>
<td markdown="block">
from
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">

</td>
<td markdown="block">
`uint64`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">
`<first>`
</td>
<td markdown="block">
designates the <span class="hoverterm">sequence number<span class="definition" data-term="sequence number">primary key identifier used to manage and locate a specific piece of *streaming data* in an *agent*.</span></span> of the first <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> in the <span class="hoverterm">buffer<span class="definition" data-term="buffer">section of an *agent* that provides storage for information published from pieces of equipment.</span></span> the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** consider publishing in the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>. 

If `from` is zero (0), it **MUST** be set to the `firstSequence`, the oldest <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> in the <span class="hoverterm">buffer<span class="definition" data-term="buffer">section of an *agent* that provides storage for information published from pieces of equipment.</span></span>. 

If `from` and `count` parameters are not given, `from` **MUST** default to the `firstSequence`. 

If the `from` parameter is less than the `firstSequence` or greater than `lastSequence`, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return a `404` <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> and **MUST** publish an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> with an `OUT_OF_RANGE` [`Error`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Error.md %})::`errorCode`. 

</td>
</tr>
<tr>
<td markdown="block">
count
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">

</td>
<td markdown="block">
`integer`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
designates the maximum number of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** publish in the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>. 

The `count` **MUST NOT** be zero (0). 

When the `count` is greater than zero (0), the `from` parameter **MUST** default to the `firstSequence`. The evaluation of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> starts at `from` and moves forward accumulating newer <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> until the number of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> equals the `count` or the  <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> at `lastSequence` is considered. 

When the `count` is less than zero (0), the `from` parameter **MUST**  default to the `lastSequence`. The evaluation of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> starts at `from` and moves backward accumulating older <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> until the number of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> equals the absolute value of `count` or the <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> at `firstSequence` is considered. 

`count` **MUST NOT** be less than zero (0) when an `interval` parameter is given. 

If `count` is not provided, it **MUST** default to `100`. 

If the absolute value of `count` is greater than the size of the <span class="hoverterm">buffer<span class="definition" data-term="buffer">section of an *agent* that provides storage for information published from pieces of equipment.</span></span> or equal to zero (0), the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return a `404` <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> and **MUST** publish an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> with an `OUT_OF_RANGE`  [`Error`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Error.md %})::`errorCode`. 

If the `count` parameter is not a numeric value, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return a `400` <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> and **MUST** publish an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> with an `INVALID_REQUEST`  [`Error`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Error.md %})::`errorCode`.

</td>
</tr>
<tr>
<td markdown="block">
<strike>frequency</strike>
</td>
<td markdown="block">
1.0
</td>
<td markdown="block">
1.2
</td>
<td markdown="block">
`uint32`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** stream samples and events to the client application pausing for frequency milliseconds between each part. Each part will contain a maximum `Agent::sample::count` of events or samples and `Agent::sample::from` will be used to indicate the beginning of the stream.

**DEPRECATED** Version 1.2, replace by `Agent::sample::interval`
</td>
</tr>
<tr>
<td markdown="block">
heartbeat
</td>
<td markdown="block">
1.4
</td>
<td markdown="block">

</td>
<td markdown="block">
`uint32`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
sets the time period for the <span class="hoverterm">heartbeat<span class="definition" data-term="heartbeat">function that indicates to a *client* that the communications connection to an *agent* is still viable during times when there is no new data available to report  often referred to as a "keep alive" message.</span></span> function in an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>. 

The value for `heartbeat` represents the amount of time after a <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> has been published until a new <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> **MUST** be published, even when no new data is available. 

The value for `heartbeat` is defined in milliseconds.

If no value is defined for `heartbeat`, the value **MUST** default to 10 seconds. 

`heartbeat` **MUST** only be specified if `interval` is also specified.

</td>
</tr>
<tr>
<td markdown="block">
interval
</td>
<td markdown="block">
1.2
</td>
<td markdown="block">

</td>
<td markdown="block">
`integer`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">
`null`
</td>
<td markdown="block">
<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** continuously publish <span class="hoverterm">response documents<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> when the query parameters include `interval` using the value as the minimum period between adjacent publications. 

The `interval` value **MUST** be in milliseconds, and **MUST** be a positive integer greater than or equal to zero (0). 

If the value for the `interval` parameter is zero (0), the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** publish  <span class="hoverterm">response documents<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> when any <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> become available.

If the period between the publication of a <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> and reception of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> exceeds the `interval`, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** wait for a maximum of `heartbeat` milliseconds for <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span>. Upon the arrival of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span>, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** immediately publish a <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>. When the period equals or exceeds the `heartbeat`, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** publish an empty <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>.
</td>
</tr>
<tr>
<td markdown="block">
to
</td>
<td markdown="block">
1.7
</td>
<td markdown="block">

</td>
<td markdown="block">
`uint64`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
specifies the <span class="hoverterm">sequence number<span class="definition" data-term="sequence number">primary key identifier used to manage and locate a specific piece of *streaming data* in an *agent*.</span></span> of the <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> in the <span class="hoverterm">buffer<span class="definition" data-term="buffer">section of an *agent* that provides storage for information published from pieces of equipment.</span></span> that will be the upper bound of the <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> in the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>.


Rules for `to` are as follows:

* The value of `to` **MUST** be an unsigned 64-bit integer.
* The value of `to` **MUST** be greater than the `firstSequence`.
* The value of `to` **MUST** be less than or equal to the `lastSequence`.
* The value of `to` **MUST** be greater than `from`.
* If `to` and `count` are given, the `count` parameter **MUST** be greater than zero.
* If `to` and `count` are given, the maximum number of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> published in the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> **MUST NOT** be greater than the value of `count`.
* If `to` is not given, see the `from` parameter for default behavior.
* If the `to` parameter is less than the `firstSequence` or greater than `lastSequence`, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return a `404` <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> and **MUST** publish an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> with an `OUT_OF_RANGE` `errorCode`.
* If the `to` parameter is not a positive numeric value, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return a `400` <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> and **MUST** publish an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> with an `INVALID_REQUEST` `errorCode`.
* If the `to` parameter is less than the `from` parameter, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return a `400` <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> and **MUST** publish an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> with an `INVALID_REQUEST` `errorCode`.
* If the `to` parameter is given and the `count` parameter is less than zero, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return a `400` <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> and **MUST** publish an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> with an `INVALID_REQUEST` `errorCode`.

</td>
</tr>
<tr>
<td markdown="block">
deviceType
</td>
<td markdown="block">
2.3
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
type of [`Device`]({% link model/DeviceInformationModel/Device.md %}).

If present, `Agent::sample::deviceType` **MUST** have a value of `Device` or `Agent`. See `Device Information Model`.
</td>
</tr>
</tbody></table>

#### Results:

<table><thead><tr><th>Name</th><th>Type</th><th>Documentation</th></tr></thead><tbody>
<tr>
<td markdown="block">
status
</td>
<td markdown="block">
`integer`
</td>
<td markdown="block">
<span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span>.

The following <span class="hoverterm">HTTP Status Codes<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> **MUST** be supported as possible responses to a <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span>:

* Status Code: `200`, Code Name: `OK`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> succeeded.
  
* Status Code: `400`, Code Name: `Bad Request`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> was invalid. The <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span>  **MUST** have an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.
  
* Status Code: `404`, Code Name: `Not Found`:

  One of the following conditions apply:
  
  * The device name or UUID could not be located. 
  * One of the `asset_ids` could not be found.
  
  The <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span> **MUST** have an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.
  
* Status Code: `405`, Code Name: `Method Not Allowed`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> specified a method other than `GET`
  
* Status Code: `406`, Code Name: `Not Acceptable`:

  The HTTP `Accept` Header in the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> was not one of the supported representations.
    
* Status Code: `431`, Code Name: `Request Header Fields Too Large`:

  The fields in the <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span> exceed the limit of the implementation of the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.
  
* Status Code: `500`, Code Name: `Internal Server Error`:

There was an unexpected error in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> while responding to a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.

</td>
</tr>
<tr>
<td markdown="block">
Result
</td>
<td markdown="block">
[`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %})
</td>
<td markdown="block">
<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** respond to a successful <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span> with an <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> `200` (`OK`) and an <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>. If the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> fails, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** respond with an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> an <span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> other than 200.

</td>
</tr>
</tbody></table>

### asset
#### Description

<span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** respond to a successful <span class="hoverterm">asset request<span class="definition" data-term="asset request">*HTTP Request* to the *agent* regarding *Assets*.</span></span> with an [`MTConnectAssets`]({% link model/Fundamentals/MTConnectProtocol/MTConnectAssetsResponseDocument/MTConnectAssets.md %}) entity with the selected <span class="hoverterm">asset<span class="definition" data-term="asset">item, thing or entity that has potential or actual value to an organization. <em>ISO 55000:2014</em>

> Note 1 to entry: Value can be tangible or intangible, financial or non-financial, and includes consideration of risks and liabilities. It can be positive or negative at different stages of the asset life.

> Note 2 to entry: Physical assets usually refer to equipment, inventory and properties owned by the organization. Physical assets are the opposite of intangible assets, which are non-physical assets such as leases, brands, digital assets, use rights, licences, intellectual property rights, reputation or agreements.

> Note 3 to entry: A grouping of assets referred to as an asset system could also be considered as an asset.

</span></span> entities according to the parameters provided.

When successful, an [`MTConnectAssets`]({% link model/Fundamentals/MTConnectProtocol/MTConnectAssetsResponseDocument/MTConnectAssets.md %}) entity is returned and status code of 200. Otherwise an [`MTConnectError`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/MTConnectError.md %}) and an associated status code."

#### Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

#### Parameters:
<table><thead><tr><th>Name</th><th>Int</th><th>Dep</th><th>Type</th><th>Multiplicity</th><th>Default Value</th><th>Description</th></tr></thead><tbody>
<tr>
<td markdown="block">
device
</td>
<td markdown="block">
2.0
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
optional [`Device`]({% link model/DeviceInformationModel/Device.md %}) `name` or `uuid`. If not given, all devices are returned.
</td>
</tr>
<tr>
<td markdown="block">
assetIds
</td>
<td markdown="block">
1.2
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..*
</td>
<td markdown="block">

</td>
<td markdown="block">
`path` portion is a list of (`asset_id`) for specific <span class="hoverterm">MTConnectAssets Response Documents<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span>.  

In response, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> returns an <span class="hoverterm">MTConnectAssets Response Document<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span> that contains information for the specific <span class="hoverterm">assets<span class="definition" data-term="asset">item, thing or entity that has potential or actual value to an organization. <em>ISO 55000:2014</em>

> Note 1 to entry: Value can be tangible or intangible, financial or non-financial, and includes consideration of risks and liabilities. It can be positive or negative at different stages of the asset life.

> Note 2 to entry: Physical assets usually refer to equipment, inventory and properties owned by the organization. Physical assets are the opposite of intangible assets, which are non-physical assets such as leases, brands, digital assets, use rights, licences, intellectual property rights, reputation or agreements.

> Note 3 to entry: A grouping of assets referred to as an asset system could also be considered as an asset.

</span></span> for each of the `asset_id` values provided in the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>. Each `asset_id` is separated by a ";".

</td>
</tr>
<tr>
<td markdown="block">
count
</td>
<td markdown="block">
1.5
</td>
<td markdown="block">

</td>
<td markdown="block">
`integer`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
specifies the maximum number of <span class="hoverterm">MTConnectAssets Response Documents<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span> returned in an <span class="hoverterm">MTConnectAssets Response Document<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span>.
  
If `count` is not given, the default value **MUST** be `100`.

</td>
</tr>
<tr>
<td markdown="block">
type
</td>
<td markdown="block">
1.5
</td>
<td markdown="block">

</td>
<td markdown="block">
`string`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
type of <span class="hoverterm">Asset<span class="definition" data-term="Asset">*asset* that is used by the manufacturing process to perform tasks.

> Note 1 to entry: An *Asset* relies upon an *Device* to provide *observations* and information about itself and the *Device* revises the information to reflect changes to the *Asset* during their interaction. Examples of *Assets* are cutting tools, Part Information, Manufacturing Processes, Fixtures, and Files.

> Note 2 to entry: A singular [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` uniquely identifies an *Asset* throughout its lifecycle and is used to track and relate the *Asset* to other *Devices* and entities.

> Note 3 to entry: *Assets* are temporally associated with a device and can be removed from the device without damage or alteration to its primary functions.

</span></span>. See `Asset Information Model`.
</td>
</tr>
<tr>
<td markdown="block">
removed
</td>
<td markdown="block">
1.5
</td>
<td markdown="block">

</td>
<td markdown="block">
`boolean`
</td>
<td markdown="block">
0..1
</td>
<td markdown="block">

</td>
<td markdown="block">
value for `Agent::asset::removed` **MUST** be `true` or `false` and interpreted as follows:
  
* `true`: <span class="hoverterm">MTConnectAssets Response Documents<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span> for <span class="hoverterm">assets<span class="definition" data-term="asset">item, thing or entity that has potential or actual value to an organization. <em>ISO 55000:2014</em>

> Note 1 to entry: Value can be tangible or intangible, financial or non-financial, and includes consideration of risks and liabilities. It can be positive or negative at different stages of the asset life.

> Note 2 to entry: Physical assets usually refer to equipment, inventory and properties owned by the organization. Physical assets are the opposite of intangible assets, which are non-physical assets such as leases, brands, digital assets, use rights, licences, intellectual property rights, reputation or agreements.

> Note 3 to entry: A grouping of assets referred to as an asset system could also be considered as an asset.

</span></span> marked as removed **MUST** be included in the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>. 

* `false`: <span class="hoverterm">MTConnectAssets Response Documents<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span> for <span class="hoverterm">assets<span class="definition" data-term="asset">item, thing or entity that has potential or actual value to an organization. <em>ISO 55000:2014</em>

> Note 1 to entry: Value can be tangible or intangible, financial or non-financial, and includes consideration of risks and liabilities. It can be positive or negative at different stages of the asset life.

> Note 2 to entry: Physical assets usually refer to equipment, inventory and properties owned by the organization. Physical assets are the opposite of intangible assets, which are non-physical assets such as leases, brands, digital assets, use rights, licences, intellectual property rights, reputation or agreements.

> Note 3 to entry: A grouping of assets referred to as an asset system could also be considered as an asset.

</span></span> marked as removed **MUST NOT** be included in the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>. 
  
If `Agent::asset::removed` is not given, the default value **MUST** be `false`. 

</td>
</tr>
</tbody></table>

#### Results:

<table><thead><tr><th>Name</th><th>Type</th><th>Documentation</th></tr></thead><tbody>
<tr>
<td markdown="block">
status
</td>
<td markdown="block">
`integer`
</td>
<td markdown="block">
<span class="hoverterm">HTTP Status Code<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span>.

The following <span class="hoverterm">HTTP Status Codes<span class="definition" data-term="HTTP Status Code">3-digit integer result code of the attempt to understand and satisfy the request.  <em>IETF:RFC-2616</em></span></span> **MUST** be supported as possible responses to a <span class="hoverterm">asset request<span class="definition" data-term="asset request">*HTTP Request* to the *agent* regarding *Assets*.</span></span>:

* Status Code: `200`, Code Name: `OK`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> succeeded.
  
* Status Code: `400`, Code Name: `Bad Request`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> was invalid. The <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span>  **MUST** have an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.
  
* Status Code: `404`, Code Name: `Not Found`:

  One of the following conditions apply:
  
  * The device name or uuid could not be located. 
  * The `from` or `to` was `OUT_OF_RANGE`.
  
  The <span class="hoverterm">response<span class="definition" data-term="response">response *interface* which responds to a *request*.</span></span> **MUST** have an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.
  
* Status Code: `405`, Code Name: `Method Not Allowed`:

  The <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> specified a method other than `GET`
  
* Status Code: `406`, Code Name: `Not Acceptable`:

  The HTTP `Accept` Header in the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> was not one of the supported representations.
    
* Status Code: `431`, Code Name: `Request Header Fields Too Large`:

  The fields in the <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span> exceed the limit of the implementation of the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.
  
* Status Code: `500`, Code Name: `Internal Server Error`:

  There was an unexpected error in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> while responding to a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.
</td>
</tr>
<tr>
<td markdown="block">
Result
</td>
<td markdown="block">
[`MTConnectAssets`]({% link model/Fundamentals/MTConnectProtocol/MTConnectAssetsResponseDocument/MTConnectAssets.md %})
</td>
<td markdown="block">
<span class="hoverterm">MTConnectAssets Response Documents<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span> provided in the <span class="hoverterm">MTConnectAssets Response Document<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span> will be limited to those specified in the combination of the `path` segment of the <span class="hoverterm">asset request<span class="definition" data-term="asset request">*HTTP Request* to the *agent* regarding *Assets*.</span></span> and the parameters provided in the `query` segment of that <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.
</td>
</tr>
</tbody></table>

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

Sufficient Observation Space

</td><td markdown="block">

```
val:SufficientObservationSpace
    a sh:NodeShape ;
    sh:message "Observation buffer length **MUST** be strictly less than Agent's buffer size." ;
    sh:targetClass mt:Agent ;
    sh:sparql [
        a sh:SPARQLConstraint ;
        sh:select """
            SELECT $this
            WHERE {
                $this mt:observationBuffer ?buffer .
                $this mt:bufferSize ?maxSize .
                ?buffer mt:length ?bufferLen .
                FILTER (xsd:integer(?bufferLen) >= xsd:integer(?maxSize))
            }
        """ ;
    ] .

```

</td></tr>

<tr><td markdown="block">

Sufficient Asset Space

</td><td markdown="block">

```
val:SufficientAssetSpace
    a sh:NodeShape ;
    sh:message "Asset buffer length **MUST** be less than Agent's max assets." ;
    sh:targetClass mt:Agent ;
    sh:sparql [
        a sh:SPARQLConstraint ;
        sh:select """
            SELECT $this
            WHERE {
                $this mt:assetBuffer ?buffer .
                $this mt:maxAssets ?maxAssets .
                ?buffer mt:length ?bufferLen .
                FILTER (xsd:integer(?bufferLen) >= xsd:integer(?maxAssets))
            }
        """ ;
    ] .

```

</td></tr>

</tbody></table>
