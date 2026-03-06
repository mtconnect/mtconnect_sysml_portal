---
title: "Condition Types Package"
parent: "Observation Types Package"
grand_parent: "Observation Information Model Package"
nav_order: 1
has_children: true
layout: default
---

# Condition Types Package

This section provides semantic information for [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) types.

[`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) types are reported differently from other [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) types. They are reported based on the <span class="hoverterm">condition state<span class="definition" data-term="condition state">indicator of the *condition*.</span></span> for each [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}).

The [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type` and [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`subType` (where applicable) for a [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) **MAY** be any of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type` and [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`subType` defined for [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})s with [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`category` as `SAMPLE` or [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`category` as `EVENT` listed in the <span class="hoverterm">Device Information Model<span class="definition" data-term="Device Information Model">*information model* that describes the physical and logical configuration for a piece of equipment and the data that may be reported by that equipment. </span></span>.

This section lists additional [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) types that have been defined to represent the health and fault status of <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span>.
