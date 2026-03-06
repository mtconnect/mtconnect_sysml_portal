---
title: "Channel"
parent: "Sensor Package"
grand_parent: "Configurations Package"
nav_order: 1
layout: default
---

# Channel
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

<span class="hoverterm">sensing element<span class="definition" data-term="sensing element">mechanism that provides a signal or measured value.</span></span> of a [`Sensor`]({% link model/DeviceInformationModel/Components/ComponentTypes/Sensor.md %}).

### Description

When [`Sensor`]({% link model/DeviceInformationModel/Components/ComponentTypes/Sensor.md %}) has multiple <span class="hoverterm">sensing elements<span class="definition" data-term="sensing element">mechanism that provides a signal or measured value.</span></span>, each <span class="hoverterm">sensing element<span class="definition" data-term="sensing element">mechanism that provides a signal or measured value.</span></span> is modeled as a [`Channel`]({% link model/DeviceInformationModel/Configurations/Sensor/Channel.md %}) for the [`Sensor`]({% link model/DeviceInformationModel/Components/ComponentTypes/Sensor.md %}). 

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>CalibrationDate</code></td><td><code>datetime</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

Date upon which the <span class="hoverterm">sensor unit<span class="definition" data-term="sensor unit">intelligent piece of equipment that manages the signals of one or more *sensing elements* and provides the measured values.</span></span> was last calibrated to the <span class="hoverterm">sensor element<span class="definition" data-term="sensor element">provides a signal or measured value.</span></span>. 

</td>
</tr>
<tr><td><code>CalibrationInitials</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

The initials of the person verifying the validity of the calibration data. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

name of the specific <span class="hoverterm">sensing element<span class="definition" data-term="sensing element">mechanism that provides a signal or measured value.</span></span>. 

</td>
</tr>
<tr><td><code>NextCalibrationDate</code></td><td><code>datetime</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

Date upon which the <span class="hoverterm">sensor element<span class="definition" data-term="sensor element">provides a signal or measured value.</span></span> is next scheduled to be calibrated with the <span class="hoverterm">sensor unit<span class="definition" data-term="sensor unit">intelligent piece of equipment that manages the signals of one or more *sensing elements* and provides the measured values.</span></span>. 

</td>
</tr>
<tr><td><code>number</code></td><td><code>string</code></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

unique identifier that will only refer to a specific <span class="hoverterm">sensing element<span class="definition" data-term="sensing element">mechanism that provides a signal or measured value.</span></span>. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isChannelOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Sensor/SensorConfiguration.md %}"><code>SensorConfiguration</code></a></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
