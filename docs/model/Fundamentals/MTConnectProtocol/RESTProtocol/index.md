---
title: "REST Protocol Package"
parent: "MTConnect Protocol Package"
grand_parent: "Fundamentals Package"
nav_order: 6
has_children: true
layout: default
---

# REST Protocol Package

An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** provide a REST API *API* supporting HTTP version 1.0 or greater.  This interface **MUST** support HTTP (RFC7230) and use URIs (RFC3986) to identify specific information requested from an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>. 

The REST API adheres to the architectural principles of a stateless service to retrieve information associated with pieces of equipment. Additionally, the API is read-only and does not produce any side effects on the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> or the equipment. In REST state management, the client is responsible for recovery in case of an error or loss of connection.

### HTTP Request

An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** support the `HTTP` `GET` verb, all other verbs are optional. See IETF RFC 7230 for a complete description of the HTTP request structure.

The HTTP uses Uniform Resource Identifiers (URI) as outlined in IETF RFC 3986 as the *request-target*. IETF RFC 7230 specifies the http URI scheme for the *request-target* as follows:

1. `protocol`: The protocol used for the request. Must be `http` or `https`.

2. `authority`: The network domain or address of the agent with an optional port.

3. `path`: A Hierarchical Identifier following a slash (`/`) and before the optional question-mark (`?`). The `path` separates segments by a slash (`/`).

4. `query`: The portion of the HTTP request following the question-mark (`?`). The query portion of the HTTP request is composed of key-value pairs, `<key>=<value>` separated by an ampersand (`&`).

#### `path` Portion of an HTTP Request

The `path` portion of the *request-target* has the following segments:

* `device-name` or `uuid`: optional `name` or `uuid` of the [`Device`]({% link model/DeviceInformationModel/Device.md %})
* `request`: request, must be one of the following: (also see *Section Operations for Agent*)
  - <a title="probe" href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637708838240_544029_5830');return false;"><span style="vertical-align: middle;"><img src='images/operation_icon.png' width='16' height='16' title='' style="vertical-align: bottom;"></span></a><a href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637708838240_544029_5830');return false;">&nbsp;probe</a>
  - <a title="current" href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637708926348_538890_5856');return false;"><span style="vertical-align: middle;"><img src='images/operation_icon.png' width='16' height='16' title='' style="vertical-align: bottom;"></span></a><a href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637708926348_538890_5856');return false;">&nbsp;current</a>
  - <a title="sample" href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637709088757_443806_5892');return false;"><span style="vertical-align: middle;"><img src='images/operation_icon.png' width='16' height='16' title='' style="vertical-align: bottom;"></span></a><a href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637709088757_443806_5892');return false;">&nbsp;sample</a>
  - <a title="asset" href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637709190690_718000_5920');return false;"><span style="vertical-align: middle;"><img src='images/operation_icon.png' width='16' height='16' title='' style="vertical-align: bottom;"></span></a><a href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637709190690_718000_5920');return false;">&nbsp;asset</a>  or `assets`
    - <a title="asset" href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637709190690_718000_5920');return false;"><span style="vertical-align: middle;"><img src='images/operation_icon.png' width='16' height='16' title='' style="vertical-align: bottom;"></span></a><a href="" target="_blank" onclick="navigate('Operation___19_0_4_45f01b9_1637709190690_718000_5920');return false;">&nbsp;asset</a> request has additional optional segment `<asset ids>`
  
If `name` or `uuid` segement are not specified in the <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span>, an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** return information for all pieces of equipment. The following sections will 

Examples: 
  
* `http://localhost:5000/my_device/probe`
  
    The request only provides information about `my_device`.
  
* `http://localhost:5000/probe`

  The request provides information for all devices. 

The following section specifies the details for each request.

### MTConnect REST API

An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** support <span class="hoverterm">probe requests<span class="definition" data-term="probe request">*request* to an *agent* to produce an *MTConnectDevices Response Document* containing the *Device Information Model*.</span></span>, <span class="hoverterm">current requests<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span>, <span class="hoverterm">sample requests<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span>, and <span class="hoverterm">asset requests<span class="definition" data-term="asset request">*HTTP Request* to the *agent* regarding *Assets*.</span></span>.

See the operations of the [`Agent`]({% link model/Fundamentals/MTConnectProtocol/RESTProtocol/Agent.md %}) for details regarding the <span class="hoverterm">requests<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.

### HTTP Errors

When an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> receives an <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span> that is incorrectly formatted or is not supported by the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** publish an <span class="hoverterm">HTTP Error Message<span class="definition" data-term="HTTP Error Message">response provided by an *agent* indicating that an *HTTP Request* is incorrectly formatted or identifies that the requested data is not available from the *agent*.  <em>IETF:RFC-2616</em></span></span> which includes a specific status code from the tables above indicating that the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> could not be handled by the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.

Also, if the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> experiences an internal error and is unable to provide the requested <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>, it **MUST** publish an <span class="hoverterm">HTTP Error Message<span class="definition" data-term="HTTP Error Message">response provided by an *agent* indicating that an *HTTP Request* is incorrectly formatted or identifies that the requested data is not available from the *agent*.  <em>IETF:RFC-2616</em></span></span> that includes a specific status code from the table above.

When an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> encounters an error in interpreting or responding to an <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span>, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** also publish an <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span> that provides additional details about the error.  See *Section Error Information Model* for details on the <span class="hoverterm">MTConnectErrors Response Document<span class="definition" data-term="MTConnectErrors Response Document">*response document* published by an *MTConnect Agent* whenever it encounters an error while interpreting an *MTConnect Request*.</span></span>.  

#### Streaming Data

HTTP <span class="hoverterm">data streaming<span class="definition" data-term="data streaming">method for an *agent* to provide a continuous stream of information in response to a single *request* from a *client*.</span></span> is a method for an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> to provide a continuous stream of <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> in response to a single <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> using a <span class="hoverterm">publish and subscribe<span class="definition" data-term="publish and subscribe">asynchronous communication method in which messages are exchanged between applications without knowing the identity of the sender or recipient.

> Note: In the MTConnect Standard, a communications messaging pattern that may be used to publish *streaming data* from an *agent*. 

</span></span> communication pattern.

When an <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span> includes an `interval` parameter, an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** provide data with a minimum delay in milliseconds between the end of one data transmission and the beginning of the next.  A value of zero (0) for the `interval` parameter indicates that the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> should deliver data at the highest rate possible and is only relevant for <span class="hoverterm">sample requests<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span> .

The format of the response **MUST** use an `x-multipart-replace` encoded message with each section separated by MIME boundaries.  Each section **MUST** contain an entire <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>. 

When streaming for a <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span>, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> produces an <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span> with the most current <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> every `interval` milliseconds.

When streaming for a <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span>, if there are no available <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> after the `interval` time elapsed, the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** wait for either the `heartbeat` time to elapse or an <span class="hoverterm">observation<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> arrives. If the `heartbeat` time elapses and no <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> arrive, then an empty <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span> **MUST** be sent.

> Note: For more information on MIME, see IETF RFC 1521 and RFC 822.

An example of the format for an <span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span> that  includes an `interval` parameter is:

~~~~
http://localhost:5000/sample?interval=1000
~~~~
{: caption="Example for HTTP Request with interval parameter" label="example-for-http-request-with-interval-parameter"}

HTTP Response Header:

~~~~
HTTP/1.1 200 OK
Connection: close
Date: Sat, 13 Mar 2010 08:33:37 UTC
Status: 200 OK
Content-Disposition: inline
X-Runtime: 144ms
Content-Type: multipart/x-mixed-replace;boundary=
a8e12eced4fb871ac096a99bf9728425
Transfer-Encoding: chunked
~~~~
{: caption="HTTP Response header" label="http-response-header"}

Lines 1-9 in http-response-header represent a standard header for a MIME `multipart/x-mixed-replace` message.  The boundary is a separator for each section of the stream. Lines 7-8 indicate this is a multipart MIME message and the boundary between sections. 

With streaming protocols, the `Content-length` **MUST** be omitted and `Transfer-Encoding` **MUST** be set to `chunked` (line 9). See IETF RFC 7230 for a full description of the HTTP protocol and chunked encoding.

~~~~
--a8e12eced4fb871ac096a99bf9728425
Content-type: text/xml
Content-length: 887

<?xml version="1.0" ecoding="UTF-8"?>
<MTConnectStreams ...>...
~~~~
{: caption="HTTP Response header 2" label="http-response-header-2" start="last"}

Each section of the document begins with a boundary preceded by two hyphens (`--`). The `Content-type` and `Content-length` header fields **MUST** be provided for each section and **MUST** be followed by `<CR><LF><CR><LF>` (ASCII code for `<CR>` is 13 and `<LF>` 10) before the *XML* document. The header and the `<CR><LF><CR><LF>` **MUST NOT** be included in the computation of the content length.

An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> MUST continue to stream results until the client closes the connection. The <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> MUST NOT stop streaming for any reason other than the following:

* <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> process stops
* The client application stops receiving data

##### Heartbeat

When <span class="hoverterm">streaming data<span class="definition" data-term="streaming data">*observations* published by a piece of equipment defined by the *equipment metadata*.</span></span> is requested from a <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span>, an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** support a <span class="hoverterm">heartbeat<span class="definition" data-term="heartbeat">function that indicates to a *client* that the communications connection to an *agent* is still viable during times when there is no new data available to report  often referred to as a "keep alive" message.</span></span> to indicate to a client application that the HTTP connection is still viable during times when there is no new data available to be published.  The <span class="hoverterm">heartbeat<span class="definition" data-term="heartbeat">function that indicates to a *client* that the communications connection to an *agent* is still viable during times when there is no new data available to report  often referred to as a "keep alive" message.</span></span> is indicated by an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> by sending an MTConnect <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> with an empty `Steams` entity (See `Observation Information Model` for more details on `Streams`) to the client software application.

The <span class="hoverterm">heartbeat<span class="definition" data-term="heartbeat">function that indicates to a *client* that the communications connection to an *agent* is still viable during times when there is no new data available to report  often referred to as a "keep alive" message.</span></span> **MUST** occur on a periodic basis given by the optional `heartbeat` query parameter and **MUST** default to 10 seconds.  An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** maintain a separate <span class="hoverterm">heartbeat<span class="definition" data-term="heartbeat">function that indicates to a *client* that the communications connection to an *agent* is still viable during times when there is no new data available to report  often referred to as a "keep alive" message.</span></span> for each client application for which the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> is responding to a <span class="hoverterm">data streaming<span class="definition" data-term="data streaming">method for an *agent* to provide a continuous stream of information in response to a single *request* from a *client*.</span></span> <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.

An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> **MUST** begin calculating the interval for the time-period of the <span class="hoverterm">heartbeat<span class="definition" data-term="heartbeat">function that indicates to a *client* that the communications connection to an *agent* is still viable during times when there is no new data available to report  often referred to as a "keep alive" message.</span></span> for each client application immediately after a <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> is published to that specific client application.

The <span class="hoverterm">heartbeat<span class="definition" data-term="heartbeat">function that indicates to a *client* that the communications connection to an *agent* is still viable during times when there is no new data available to report  often referred to as a "keep alive" message.</span></span> remains in effect for each client software application until the <span class="hoverterm">data streaming<span class="definition" data-term="data streaming">method for an *agent* to provide a continuous stream of information in response to a single *request* from a *client*.</span></span> <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> is terminated by either the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> or the client application.

#### References

A [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) **MAY** include a set of [`Reference`]({% link model/DeviceInformationModel/References/Reference.md %}) entities of the following types that **MAY** alter the content of the <span class="hoverterm">MTConnectStreams Response Documents<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span> published in response to a <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span> or a <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span> as specified:

* A <span class="hoverterm">Component<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> reference ([`ComponentRef`]({% link model/DeviceInformationModel/References/ComponentRef.md %})) modifies the set of <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span>, limited by a path query parameter of a <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span> or <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span>, to include the <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> associated with the entity whose value for its `id` attribute matches the value provided for the `idRef` attribute of the [`ComponentRef`]({% link model/DeviceInformationModel/References/ComponentRef.md %}) element. Additionally, <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> defined for any <span class="hoverterm">lower level<span class="definition" data-term="lower level">nested element that is below a higher level element.</span></span> entity(s) associated with the identified entities **MUST** also be returned. The result is equivalent to appending `//[@id=<"idRef">]` to the path query parameters of the <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span> or <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span>. See `Agent` for more details on path queries.

* A <span class="hoverterm">DataItem<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> reference ([`DataItemRef`]({% link model/DeviceInformationModel/References/DataItemRef.md %})) modifies the set of resulting <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span>, limited by a path query parameter of a <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span> or <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span>, to include the <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> whose value for its `id` attribute matches the value provided for the `idRef` attribute of the [`DataItemRef`]({% link model/DeviceInformationModel/References/DataItemRef.md %}) element. The result is equivalent to appending `//[@id=<"idRef">]` to the path query parameters of the <span class="hoverterm">current request<span class="definition" data-term="current request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a snapshot of the latest *observations* at the moment of the *request* or at a given *sequence number*.</span></span> or <span class="hoverterm">sample request<span class="definition" data-term="sample request">*request* to an *agent* to produce an *MTConnectStreams Response Document* containing the *Observation Information Model* for a set of timestamped *observations* made by *Components*.</span></span>. See `Agent` for more details on path queries.

