---
title: "Component Types Package"
parent: "Components Package"
grand_parent: "Device Information Model Package"
nav_order: 1
has_children: true
layout: default
---

# Component Types Package

This section provides semantic information for the types of [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). 

> Note: In the *XML* representation, [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) entities are defined into two major categories:

> * <span class="hoverterm">top level<span class="definition" data-term="top level">element that represents the most significant physical or logical functions of a piece of equipment.</span></span> [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) entities that <span class="hoverterm">organizes<span class="definition" data-term="organize">act of containing and owning one or more elements.</span></span> the most significant physical or logical functions of a piece of equipment (see *Section Part Properties of Device*).  They **MAY** also be used as <span class="hoverterm">lower level<span class="definition" data-term="lower level">nested element that is below a higher level element.</span></span> [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) entities; as required. See `Component Organizer Types`.

> * <span class="hoverterm">lower level<span class="definition" data-term="lower level">nested element that is below a higher level element.</span></span> [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) entities composed of the sub-parts of the parent [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) to provide more clarity and granularity to the physical or logical structure of the <span class="hoverterm">top level<span class="definition" data-term="top level">element that represents the most significant physical or logical functions of a piece of equipment.</span></span> [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) entities.

This section provides guidance for the most common relationships between [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) types.  However, all [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) types **MAY** be used in any configuration, as required, to fully describe a piece of equipment.

As described in `Components`, [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) is an abstract entity and will be always realized by a specific [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) type.
