---
title: "Exception"
parent: "MTConnectExceptionsReport Response Document Package"
grand_parent: "MTConnect Protocol Package"
nav_order: 1
layout: default
---

# Exception
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.6 |  |   |

irregularity encountered by an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> in a <span class="hoverterm">response document<span class="definition" data-term="response document">electronic *document* published by an *MTConnect Agent* in response to a *probe request*, *current request*, *sample request* or *asset request*.</span></span> that may or may not conform to the MTConnect Standard.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasTrace</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectExceptionsReportResponseDocument/Trace.md %}"><code>Trace</code></a></td><td>2.6</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isMTConnectDevicesExceptionOf</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectExceptionsReportResponseDocument/MTConnectDevicesExceptionsReport.md %}"><code>MTConnectDevicesExceptionsReport</code></a></td><td>2.6</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isMTConnectStreamsExceptionOf</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectExceptionsReportResponseDocument/MTConnectStreamsExceptionsReport.md %}"><code>MTConnectStreamsExceptionsReport</code></a></td><td>2.6</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isMTConnectAssetsExceptionOf</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectExceptionsReportResponseDocument/MTConnectAssetsExceptionsReport.md %}"><code>MTConnectAssetsExceptionsReport</code></a></td><td>2.6</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
