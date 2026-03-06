---
title: "DataItem"
parent: "DataItems Package"
grand_parent: "Device Information Model Package"
nav_order: 4
layout: default
---

# DataItem
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

information reported about a piece of equipment.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>category</code></td><td><a href="{% link model/Profile/DataTypes/CategoryEnum.md %}"><code>CategoryEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

specifies the kind of information provided by a data item. 

</td>
</tr>
<tr><td><code>compositionId</code></td><td><code>ID</code></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

identifier attribute of the [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) that the reported data is most closely associated. 

</td>
</tr>
<tr><td><s><code>coordinateSystem</code></s></td><td><a href="{% link model/Profile/DataTypes/CoordinateSystemEnum.md %}"><code>CoordinateSystemEnum</code></a></td><td>1.0</td><td>2.0</td><td>0..1</td>
<td markdown="block">

for measured values relative to a coordinate system like [`Position`]({% link model/WIPDeviceExamples/KinematicsSimulation/XArm7Model/Position.md %}), the coordinate system used may be reported.

**DEPRECATED** in *Version 2.0*. Replaced by [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`coordinateSystemIdRef`.  

</td>
</tr>
<tr><td><code>discrete</code></td><td><code>boolean</code></td><td>1.5</td><td></td><td>1</td>
<td markdown="block">

indication signifying whether each value reported for the <span class="hoverterm">Observation<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> is significant and whether duplicate values are to be suppressed.

If a value is not defined for [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`discrete`, the default value **MUST** be `false`. 

</td>
</tr>
<tr><td><code>id</code></td><td><code>ID</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

unique identifier for this data item. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

name of the data item. 

</td>
</tr>
<tr><td><code>nativeScale</code></td><td><code>integer</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

used to convert the reported value to represent the original measured value. 

</td>
</tr>
<tr><td><code>nativeUnits</code></td><td><a href="{% link model/Profile/DataTypes/NativeUnitEnum.md %}"><code>NativeUnitEnum</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

native units of measurement for the reported value of the data item. 

</td>
</tr>
<tr><td><code>sampleRate</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

rate at which successive samples of a data item are recorded by a piece of equipment. 

</td>
</tr>
<tr><td><code>significantDigits</code></td><td><code>integer</code></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

number of significant digits in the reported value. 

</td>
</tr>
<tr><td><code>statistic</code></td><td><a href="{% link model/Profile/DataTypes/StatisticEnum.md %}"><code>StatisticEnum</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

type of statistical calculation performed on a series of data samples to provide the reported data value. 

</td>
</tr>
<tr><td><code>subType</code></td><td><a href="{% link model/Profile/DataTypes/DataItemSubTypeEnum.md %}"><code>DataItemSubTypeEnum</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

sub-categorization of the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type`. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/DataItemTypeEnum.md %}"><code>DataItemTypeEnum</code></a></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

type of data being measured. See `DataItem Types`. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

unit of measurement for the reported value of the data item. 

</td>
</tr>
<tr><td><code>representation</code></td><td><a href="{% link model/Profile/DataTypes/RepresentationEnum.md %}"><code>RepresentationEnum</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

description of a means to interpret data consisting of multiple data points or samples reported as a single value.  

If [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` is not specified, it **MUST** be determined to be `VALUE`.
 

</td>
</tr>
<tr><td><code>coordinateSystemIdRef</code></td><td><code>ID</code></td><td>1.5</td><td></td><td>0..1</td>
<td markdown="block">

associated [`CoordinateSystem`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/CoordinateSystem.md %}) context for the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasSource</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Source.md %}"><code>Source</code></a></td><td>1.0</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasConstraint</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Constraints.md %}"><code>Constraints</code></a></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasFilter</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Filter.md %}"><code>Filter</code></a></td><td>1.4</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasInitialValue</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/InitialValue.md %}"><code>InitialValue</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasResetTrigger</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/ResetTrigger.md %}"><code>ResetTrigger</code></a></td><td>1.4</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasObservation</code></td><td><a href="{% link model/ObservationInformationModel/Observation.md %}"><code>Observation</code></a></td><td>1.0</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasDefinition</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/Definition.md %}"><code>Definition</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasRelationship</code></td><td><a href="{% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/RelationshipTypesforDataItem/AbstractDataItemRelationship.md %}"><code>AbstractDataItemRelationship</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isDataItemOf</code></td><td><a href="{% link model/DeviceInformationModel/Components/Component.md %}"><code>Component</code></a></td><td>1.0</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

`DataItem` has one or more incorrect multiplicities.

</td><td markdown="block">

```
id->size() = 1 and
(self.oclAsType(DataItems::"DataItem Types"::Event).type->size() = 1 or
self.oclAsType(DataItems::"DataItem Types"::Sample).type->size() = 1 or
self.oclAsType(DataItems::"DataItem Types"::Condition).type->size() = 1
) and
(self.oclAsType(DataItems::"DataItem Types"::Event).category->size() = 1 or
self.oclAsType(DataItems::"DataItem Types"::Sample).category->size() = 1 or
self.oclAsType(DataItems::"DataItem Types"::Condition).category->size() = 1
)
```

</td></tr>

<tr><td markdown="block">

`category` for `DataItem`is incorrect.

</td><td markdown="block">

```
self.oclAsType(DataItems::"DataItem Types"::Event).category = DataTypes::CategoryEnum::EVENT or 
self.oclAsType(DataItems::"DataItem Types"::Sample).category =  DataTypes::CategoryEnum::SAMPLE or
self.oclAsType(DataItems::"DataItem Types"::Condition).category =  DataTypes::CategoryEnum::CONDITION
```

</td></tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) | 1.1 |  |
| [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}) | 1.0 |  |
| [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %}) | 1.0 |  |

