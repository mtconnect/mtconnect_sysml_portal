---
title: "Path"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 60
layout: default
---

# Path

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |   |

[`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) that organizes an independent operation or function within a [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}).

### Description

For many types of equipment, [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) organizes a set of [`Axes`]({% link model/DeviceInformationModel/Components/ComponentTypes/ComponentOrganizerTypes/Axes.md %}), one or more Program elements, and the data associated with the motion of a control point as it moves through space. However, it **MAY** also represent any independent function within a [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) that has unique data associated with that function.
 
[`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) **SHOULD** provide an [`Execution`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Execution.md %}) data item to define the operational state of the [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) of the piece of equipment.

If the [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) is capable of performing more than one independent operation or function simultaneously, a separate [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) **MUST** be used to organize the data associated with each independent operation or function.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesExecution</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/Execution.md %}"><code>Execution</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesProgram</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/Program.md %}"><code>Program</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPathFeedrateOverrideProgrammed</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PathFeedrateOverrideProgrammed.md %}"><code>PathFeedrateOverride.Programmed</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPathFeedrateOverrideRapid</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PathFeedrateOverrideRapid.md %}"><code>PathFeedrateOverride.Rapid</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesRotaryVelocityOverride</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/RotaryVelocityOverride.md %}"><code>RotaryVelocityOverride</code></a></td><td>1.3</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPathFeedrate</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathFeedrate.md %}"><code>PathFeedrate</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPartCount</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCount.md %}"><code>PartCount</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isPathOf</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}"><code>Controller</code></a></td><td>1.1</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
