---
title: "Observation Types Package"
parent: "Observation Information Model Package"
nav_order: 1
has_children: true
layout: default
---

# Observation Types Package

This section provides semantic information for the [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) types.

[`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) entities are instantiated as [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %}), [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}) or [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) entities based upon the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`category` and [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type` defined for the corresponding [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}).

See *Figure DeviceStream Example* for examples on how the [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) types are organized within [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}).
