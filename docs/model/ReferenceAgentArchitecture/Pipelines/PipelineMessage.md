---
title: "PipelineMessage"
parent: "Pipelines Package"
grand_parent: "Reference Agent Architecture Package"
nav_order: 19
layout: default
---

# PipelineMessage

**Supertype:** `Entity`

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>name</code></td><td><code>string</code></td><td></td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>dataItem</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/DataItem.md %}"><code>DataItem</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>device</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`DataMessage`]({% link model/ReferenceAgentArchitecture/Pipelines/DataMessage.md %}) |  |  |
| [`JsonMessage`]({% link model/ReferenceAgentArchitecture/Pipelines/JsonMessage.md %}) |  |  |

