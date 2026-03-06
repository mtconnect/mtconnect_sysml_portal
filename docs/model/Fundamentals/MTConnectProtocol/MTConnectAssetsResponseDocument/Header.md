---
title: "Header"
parent: "MTConnectAssets Response Document Package"
grand_parent: "MTConnect Protocol Package"
nav_order: 1
layout: default
---

# Header
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

provides information from an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> defining version information, storage capacity, and parameters associated with the data management within the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>deviceModelChangeTime</code></td><td><code>datetime</code></td><td>1.7</td><td></td><td>1</td>
<td markdown="block">

timestamp of the last update of the [`Device`]({% link model/DeviceInformationModel/Device.md %}) information for any device. 

</td>
</tr>
<tr><td><code>assetBufferSize</code></td><td><code>uint32</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

maximum number of [`Asset`]({% link model/AssetInformationModel/Asset.md %}) types that can be stored in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> that published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>.  

> Note: The implementer is responsible for allocating the appropriate amount of storage capacity required to accommodate the [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`assetBufferSize`.
 

</td>
</tr>
<tr><td><code>assetCount</code></td><td><code>uint32</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

current number of [`Asset`]({% link model/AssetInformationModel/Asset.md %}) that are currently stored in the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> as of the [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`creationTime` that the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>.

[`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`assetCount` **MUST NOT** be larger than the value reported for [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`assetBufferSize`.
 

</td>
</tr>
<tr><td><code>creationTime</code></td><td><code>datetime</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

timestamp that an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>.  

</td>
</tr>
<tr><td><code>instanceId</code></td><td><code>uint64</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

identifier for a specific instantiation of the <span class="hoverterm">buffer<span class="definition" data-term="buffer">section of an *agent* that provides storage for information published from pieces of equipment.</span></span> associated with the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> that published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>.  
     
[`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`instanceId` **MUST** be changed to a different unique number each time the <span class="hoverterm">buffer<span class="definition" data-term="buffer">section of an *agent* that provides storage for information published from pieces of equipment.</span></span> is cleared and a new set of data begins to be collected. 

</td>
</tr>
<tr><td><code>sender</code></td><td><code>string</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

identification defining where the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> that published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> is installed or hosted.

[`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`sender` **MUST** be either an IP Address or Hostname describing where the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> is installed or the URL of the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>; e.g., `http://<address>[:port]/`. 

> Note:  The port number need not be specified if it is the default HTTP port 80. 

</td>
</tr>
<tr><td><code>testIndicator</code></td><td><code>boolean</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

indicates whether the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> that published the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> is operating in a test mode.

If [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`testIndicator` is not specified, the value for [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`testIndicator` **MUST** be interpreted to be `false`. 

</td>
</tr>
<tr><td><code>version</code></td><td><code>version</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

<span class="hoverterm">major<span class="definition" data-term="major">identifier representing a consistent set of functionalities defined by the MTConnect Standard.</span></span>, <span class="hoverterm">minor<span class="definition" data-term="minor">identifier representing a specific set of functionalities defined by the MTConnect Standard.</span></span>, and *revision* number of the MTConnect Standard that defines the <span class="hoverterm">semantic data model<span class="definition" data-term="semantic data model">methodology for defining the structure and meaning for data in a specific logical way that can be interpreted by a software system. </span></span> that represents the content of the <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span>. It also includes the revision number of the <span class="hoverterm">schema<span class="definition" data-term="schema">definition of the structure, rules, and vocabularies used to define the information published in an electronic document.</span></span> associated with that specific <span class="hoverterm">semantic data model<span class="definition" data-term="semantic data model">methodology for defining the structure and meaning for data in a specific logical way that can be interpreted by a software system. </span></span>.

As an example, the value reported for [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %})::`version` for a <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> that was structured based on <span class="hoverterm">schema<span class="definition" data-term="schema">definition of the structure, rules, and vocabularies used to define the information published in an electronic document.</span></span> revision 10 associated with Version 1.4.0 of the MTConnect Standard would be:  1.4.0.10 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isHeaderOf</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectAssetsResponseDocument/MTConnectAssets.md %}"><code>MTConnectAssets</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isHeaderOf</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectExceptionsReportResponseDocument/MTConnectAssetsExceptionsReport.md %}"><code>MTConnectAssetsExceptionsReport</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
