---
title: "Controller"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 20
layout: default
---

# Controller

**Supertype:** `System`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

[`System`]({% link model/DeviceInformationModel/Components/ComponentTypes/System.md %}) that provides regulation or management of a system or component. <em>ISO 16484-5:2017</em>

### Description

Typical types of controllers for a piece of equipment include CNC (Computer Numerical Control), PAC (Programmable Automation Control), IPC (Industrialized Computer), or IC (Imbedded Computer).

> Note: In *XML* representation, [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) is a <span class="hoverterm">top level<span class="definition" data-term="top level">element that represents the most significant physical or logical functions of a piece of equipment.</span></span> element.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isControllerOf</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>2.0</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Controllers`)

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasPath</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}"><code>Path</code></a></td><td>1.1</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesEmergencyStop</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/EmergencyStop.md %}"><code>EmergencyStop</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesSystemCondition</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/ConditionTypes/System.md %}"><code>System</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesControllerMode</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/ControllerMode.md %}"><code>ControllerMode</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesCommunicationsCondition</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/ConditionTypes/Communications.md %}"><code>Communications</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesLogicProgramCondition</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/ConditionTypes/LogicProgram.md %}"><code>LogicProgram</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
