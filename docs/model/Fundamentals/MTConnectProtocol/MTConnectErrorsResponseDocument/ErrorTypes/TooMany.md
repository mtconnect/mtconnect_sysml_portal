---
title: "TooMany"
parent: "Error Types Package"
grand_parent: "MTConnectErrors Response Document Package"
nav_order: 14
layout: default
---

# TooMany

**Supertype:** `Error`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.6 |  |   |

`count` parameter provided in the <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> for information requires either of the following:

* <span class="hoverterm">streaming data<span class="definition" data-term="streaming data">*observations* published by a piece of equipment defined by the *equipment metadata*.</span></span> that includes more pieces of data than the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> is capable of organizing in an <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>. 

* `Assets` that include more [`Asset`]({% link model/AssetInformationModel/Asset.md %}) in an <span class="hoverterm">MTConnectAssets Response Document<span class="definition" data-term="MTConnectAssets Response Document">*response document* published by an *MTConnect Agent* in response to an *asset request*.</span></span> than the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> is capable of handling. 
