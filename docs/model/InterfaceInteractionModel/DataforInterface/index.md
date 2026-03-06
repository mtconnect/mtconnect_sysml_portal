---
title: "Data for Interface Package"
parent: "Interface Interaction Model Package"
nav_order: 1
layout: default
---

# Data for Interface Package

Each <span class="hoverterm">interface<span class="definition" data-term="interface">means by which communication is achieved between independent systems.</span></span> **MUST** provide the data associated with the specific <span class="hoverterm">interface<span class="definition" data-term="interface">means by which communication is achieved between independent systems.</span></span> to implement the <span class="hoverterm">interaction model<span class="definition" data-term="interaction model">model that defines how information is exchanged across an *interface* to enable interactions between independent systems.</span></span> and any additional data that may be needed by another piece of equipment to understand the operating states and conditions of the first piece of equipment as it applies to the <span class="hoverterm">interface<span class="definition" data-term="interface">means by which communication is achieved between independent systems.</span></span>.

Details on data items specific to the <span class="hoverterm">interaction model<span class="definition" data-term="interaction model">model that defines how information is exchanged across an *interface* to enable interactions between independent systems.</span></span> for each type of <span class="hoverterm">interface<span class="definition" data-term="interface">means by which communication is achieved between independent systems.</span></span> are provided in `DataItem Types for Interface`.

An implementer may choose any other data available from a piece of equipment to describe the operating states and other information needed to support an <span class="hoverterm">interface<span class="definition" data-term="interface">means by which communication is achieved between independent systems.</span></span>.

### References for Interface

Some of the data items needed to support a specific <span class="hoverterm">interface<span class="definition" data-term="interface">means by which communication is achieved between independent systems.</span></span> may already be defined elsewhere in the <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span> for a piece of equipment.  However, the implementer may not be able to directly associate this data with the <span class="hoverterm">interface<span class="definition" data-term="interface">means by which communication is achieved between independent systems.</span></span> since the MTConnect Standard does not permit multiple occurrences of a piece of data to be configured in an <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span>.  `References` provides a mechanism for associating information defined elsewhere in the <span class="hoverterm">information model<span class="definition" data-term="information model">rules, relationships, and terminology that are used to define how information is structured.</span></span> for a piece of equipment with a specific <span class="hoverterm">interface<span class="definition" data-term="interface">means by which communication is achieved between independent systems.</span></span>.  

`References` <span class="hoverterm">organizes<span class="definition" data-term="organize">act of containing and owning one or more elements.</span></span> [`Reference`]({% link model/DeviceInformationModel/References/Reference.md %}) elements.

[`Reference`]({% link model/DeviceInformationModel/References/Reference.md %}) is a pointer to information that is associated with another entity defined elsewhere for a piece of equipment.

`References` is an economical syntax for providing interface specific information without directly duplicating the occurrence of the data. It provides a mechanism to include all necessary information required for interaction and deterministic information flow between pieces of equipment.

For more information on the `References` model, see `Device Information Model`.
