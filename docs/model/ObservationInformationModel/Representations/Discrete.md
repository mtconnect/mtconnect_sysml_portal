---
title: "Discrete"
parent: "Representations Package"
grand_parent: "Observation Information Model Package"
nav_order: 3
layout: default
---

# Discrete

**Supertype:** `Representation`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 | 1.5 |   |

**DEPRECATED** [`Representation`]({% link model/ObservationInformationModel/Representations/Representation.md %}) for an [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) where each discrete occurrence of the data may have the same value as the previous occurrence of the data.

### Description


[`Discrete`]({% link model/ObservationInformationModel/Representations/Discrete.md %}) for an [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) is defined by the associated [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` as `DISCRETE`.

[`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` as `DISCRETE` **MUST** have [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`category` as `EVENT`.

*MTConnect Version 1.5* replaced [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` as `DISCRETE` with [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`discrete`.

Each occurrence of the [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) **MAY** have the same value as the previous occurrence, and **MUST NOT** suppress duplicates.

Examples of [`Discrete`]({% link model/ObservationInformationModel/Representations/Discrete.md %}): A `PartCount` reporting the completion of each part using a 1 to indicate completion of a single part, a `Message` that occurs each time a door opens. 

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><s><code>result</code></s></td><td><code>string</code></td><td>1.3</td><td>1.5</td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>
