---
title: "Electric"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 29
layout: default
---

# Electric

**Supertype:** `System`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

[`System`]({% link model/DeviceInformationModel/Components/ComponentTypes/System.md %}) composed of the main power supply for the piece of equipment that provides distribution of that power throughout the equipment.

### Description

The electric system will provide all the data with regard to electric current, voltage, frequency, etc. that applies to the piece of equipment as a functional unit. Data regarding electric power that is specific to a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) will be reported for that specific [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}).

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesWattage</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/SampleTypes/Wattage.md %}"><code>Wattage</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
