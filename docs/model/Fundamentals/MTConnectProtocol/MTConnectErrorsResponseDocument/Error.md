---
title: "Error"
parent: "MTConnectErrors Response Document Package"
grand_parent: "MTConnect Protocol Package"
nav_order: 2
layout: default
---

# Error
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |  2.6 (Previous: [2.5](https://model.mtconnect.org/versions/2.5/error)) |

abstract error encountered by an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> when responding to a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>errorCode</code></s></td><td><a href="{% link model/Profile/DataTypes/ErrorCodeEnum.md %}"><code>ErrorCodeEnum</code></a></td><td>1.0</td><td>2.6</td><td>1</td>
<td markdown="block">

descriptive code that indicates the type of error that was encountered by an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>. 

</td>
</tr>
<tr><td><s><code>value</code></s></td><td><code>string</code></td><td>1.0</td><td>2.6</td><td>0..1</td>
<td markdown="block">

textual description of the error and any additional information an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> is capable of providing regarding a specific error. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isErrorOf</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/MTConnectError.md %}"><code>MTConnectError</code></a></td><td>1.1</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><s><code>isErrorOf</code></s></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/MTConnectError.md %}"><code>MTConnectError</code></a></td><td>1.0</td><td>1.1</td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`AssetNotFound`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/AssetNotFound.md %}) | 2.6 |  |
| [`InternalError`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/InternalError.md %}) | 2.6 |  |
| [`InvalidParameterValue`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/InvalidParameterValue.md %}) | 2.6 |  |
| [`InvalidQueryParameter`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/InvalidQueryParameter.md %}) | 2.6 |  |
| [`InvalidRequest`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/InvalidRequest.md %}) | 2.6 |  |
| [`InvalidURI`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/InvalidURI.md %}) | 2.6 |  |
| [`InvalidXPath`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/InvalidXPath.md %}) | 2.6 |  |
| [`NoDevice`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/NoDevice.md %}) | 2.6 |  |
| [`OutOfRange`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/OutOfRange.md %}) | 2.6 |  |
| [`QueryError`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/QueryError.md %}) | 2.6 |  |
| [`TooMany`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/TooMany.md %}) | 2.6 |  |
| [`Unauthorized`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/Unauthorized.md %}) | 2.6 |  |
| [`Unsupported`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/ErrorTypes/Unsupported.md %}) | 2.6 |  |

