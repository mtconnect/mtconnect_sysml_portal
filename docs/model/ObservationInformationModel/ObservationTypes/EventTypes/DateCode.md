---
title: "DateCode"
parent: "Event Types Package"
grand_parent: "Observation Types Package"
nav_order: 75
layout: default
---

# DateCode

**Supertype:** `Event`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.5 |  |   |

time and date code associated with a material or other physical item.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/EventEnum.md %}"><code>EventEnum</code></a></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>result</code></td><td><code>datetime</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`DateCode.Expiration`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DateCodeExpiration.md %}) | 1.5 |  |
| [`DateCode.FirstUse`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DateCodeFirstUse.md %}) | 1.5 |  |
| [`DateCode.Manufacture`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/DateCodeManufacture.md %}) | 1.5 |  |

