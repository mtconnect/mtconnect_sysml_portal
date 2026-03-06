---
title: "Representation"
parent: "Representations Package"
grand_parent: "Observation Information Model Package"
nav_order: 5
layout: default
---

# Representation
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

specifies the format and structure of [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %})::`result`.

### Description

The [`Representation`]({% link model/ObservationInformationModel/Representations/Representation.md %}) type for an [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) is defined by the associated [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` in the <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span>.

[`Value`]({% link model/ObservationInformationModel/Representations/Value.md %}) is the default [`Representation`]({% link model/ObservationInformationModel/Representations/Representation.md %}) type for all [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) types.

The name of the [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) type is modified for all [`Representation`]({% link model/ObservationInformationModel/Representations/Representation.md %}) types other than [`Value`]({% link model/ObservationInformationModel/Representations/Value.md %}) by appending the pascal case of the [`Representation`]({% link model/ObservationInformationModel/Representations/Representation.md %}) type. 

Example: The name for [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %}) [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) type `Temperature`with `Representation` type of `TimeSeries` becomes `TemperatureTimeSeries`.

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`DataSet`]({% link model/ReferenceAgentArchitecture/InformationModel/DataSet.md %}) | 1.5 |  |
| [`Discrete`]({% link model/ObservationInformationModel/Representations/Discrete.md %}) | 1.3 | 1.5 |
| [`Table`]({% link model/DeviceInformationModel/Components/ComponentTypes/Table.md %}) | 1.6 |  |
| [`TimeSeries`]({% link model/ReferenceAgentArchitecture/InformationModel/TimeSeries.md %}) | 1.2 |  |
| [`Value`]({% link model/ObservationInformationModel/Representations/Value.md %}) | 1.2 |  |

