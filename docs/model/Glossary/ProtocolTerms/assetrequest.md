---
title: "asset request"
parent: "Protocol Terms Package"
grand_parent: "Glossary Package"
nav_order: 8
layout: default
---

# asset request

**Supertype:** `MTConnect Request`

<span class="hoverterm">HTTP Request<span class="definition" data-term="HTTP Request">request message from a client to a server includes, within the first line of that message, the method to be applied to the resource, the identifier of the resource, and the protocol version in use. <em>IETF:RFC-2616</em>

> Note: In MTConnect Standard, a request issued by a *client* to an *agent* requesting information defined in the *HTTP Request Line*.

</span></span> to the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> regarding <span class="hoverterm">Assets<span class="definition" data-term="Asset">*asset* that is used by the manufacturing process to perform tasks.

> Note 1 to entry: An *Asset* relies upon an *Device* to provide *observations* and information about itself and the *Device* revises the information to reflect changes to the *Asset* during their interaction. Examples of *Assets* are cutting tools, Part Information, Manufacturing Processes, Fixtures, and Files.

> Note 2 to entry: A singular [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` uniquely identifies an *Asset* throughout its lifecycle and is used to track and relate the *Asset* to other *Devices* and entities.

> Note 3 to entry: *Assets* are temporally associated with a device and can be removed from the device without damage or alteration to its primary functions.

</span></span>.
