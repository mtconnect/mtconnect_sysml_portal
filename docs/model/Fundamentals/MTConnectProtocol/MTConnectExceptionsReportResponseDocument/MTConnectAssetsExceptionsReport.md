---
title: "MTConnectAssetsExceptionsReport"
parent: "MTConnectExceptionsReport Response Document Package"
grand_parent: "MTConnect Protocol Package"
nav_order: 8
layout: default
---

# MTConnectAssetsExceptionsReport

**Supertype:** `MTConnectExceptionsReport`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.6 |  |   |

[`MTConnectExceptionsReport`]({% link model/Fundamentals/MTConnectProtocol/MTConnectExceptionsReportResponseDocument/MTConnectExceptionsReport.md %}) where exception is encountered in the <span class="hoverterm">MTConnectAssets Response Document<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span>.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasMTConnectAssetsException</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectExceptionsReportResponseDocument/Exception.md %}"><code>Exception</code></a></td><td>2.6</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasHeader</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectAssetsResponseDocument/Header.md %}"><code>Header</code></a></td><td>2.6</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
