---
title: "ComponentStream"
parent: "Observation Information Model Package"
nav_order: 3
layout: default
---

# ComponentStream
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

organizes the data associated with each [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) entity defined for a [`Device`]({% link model/DeviceInformationModel/Device.md %}) in the associated <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span>.

### Description

At least one of [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %}), [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}), or [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) **MUST** be organized by a [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}) entity.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>component</code></td><td><code>string</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

identifies the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) type associated with the [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}).

Examples of [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %})::`component` are [`Device`]({% link model/DeviceInformationModel/Device.md %}), [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}), [`Linear`]({% link model/DeviceInformationModel/Components/ComponentTypes/Linear.md %}) and [`Loader`]({% link model/DeviceInformationModel/Components/ComponentTypes/Loader.md %}). 

</td>
</tr>
<tr><td><code>componentId</code></td><td><code>ID</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

identifier of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) as defined by the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`id` in the <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span>. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

name of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) associated with the [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}). 

</td>
</tr>
<tr><td><code>nativeName</code></td><td><code>string</code></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

common name of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) associated with the [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}). 

</td>
</tr>
<tr><td><code>uuid</code></td><td><code>UUID</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

uuid of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) associated with the [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>organizesEvent</code></td><td><a href="{% link model/ObservationInformationModel/Event.md %}"><code>Event</code></a></td><td>1.0</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>organizesSample</code></td><td><a href="{% link model/ObservationInformationModel/Sample.md %}"><code>Sample</code></a></td><td>1.0</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>organizesCondition</code></td><td><a href="{% link model/ObservationInformationModel/Condition.md %}"><code>Condition</code></a></td><td>1.1</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isComponentStreamOf</code></td><td><a href="{% link model/ObservationInformationModel/DeviceStream.md %}"><code>DeviceStream</code></a></td><td>1.0</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isComponentStreamOf</code></td><td><a href="{% link model/DeviceInformationModel/Components/Component.md %}"><code>Component</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

[`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}) **MUST** have at least one of [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}), [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %}) or [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}).

</td><td markdown="block">

```
val:ComponentStreamMustHaveEventSampleOrCondition
    a sh:NodeShape ;
    sh:message "`ComponentStream` MUST have at least one of `Event`, `Sample`, or `Condition`." ;
    sh:targetClass mt:ComponentStream ;
    sh:or (
        [ sh:property [
            sh:path mt:organizesEvent ;
            sh:minCount 1 ;
            sh:class mt:Event ;
        ] ]
        [ sh:property [
            sh:path mt:organizesSample ;
            sh:minCount 1 ;
            sh:class mt:Sample ;
        ] ]
        [ sh:property [
            sh:path mt:organizesCondition ;
            sh:minCount 1 ;
            sh:class mt:Condition ;
        ] ]
    ) .
```

</td></tr>

</tbody></table>
