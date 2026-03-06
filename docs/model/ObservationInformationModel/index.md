---
title: "Observation Information Model Package"
nav_order: 4
has_children: true
layout: default
---

# Observation Information Model Package

The <span class="hoverterm">Observation Information Model<span class="definition" data-term="Observation Information Model">*information model* that describes the *streaming data* reported by a piece of equipment.</span></span> provides a representation of the data reported by a piece of equipment used for a manufacturing process, or used for any other purpose.  Additional descriptive information associated with the reported data is defined by the [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity, which is described in `Device Information Model`.

Information defined in the <span class="hoverterm">Observation Information Model<span class="definition" data-term="Observation Information Model">*information model* that describes the *streaming data* reported by a piece of equipment.</span></span> allows a software application to (1) determine the <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> for <span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> returned from a piece of equipment and (2) interpret the data associated with those <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> with the same meaning, value, and context that it had at its original source.  To do this, the software application issues one of two HTTP requests to an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> associated with a piece of equipment.  They are:

* `sample`:  Returns a designated number of time stamped <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> from an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> associated with a piece of equipment; subject to any HTTP filtering associated with the request.  See [`Agent`]({% link model/DeviceInformationModel/Components/Devices/Agent.md %}) in `Fundamentals` for details on the `sample` HTTP request.

* `current`:  Returns a snapshot of either the most recent values or the values at a given sequence number for all <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> associated with a piece of equipment from an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>; subject to any HTTP filtering associated with the request.  See [`Agent`]({% link model/DeviceInformationModel/Components/Devices/Agent.md %}) in `Fundamentals` for details on the `current` HTTP request.


An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> responds to either the `sample` or `current` HTTP request with an <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span>.  This document contains information describing <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> reported by an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> associated with a piece of equipment.   A client software application may correlate the information provided in the <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span> with the physical and logical structure for that piece of equipment defined in the [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity to form a clear and unambiguous understanding of the information provided.  (See details on the structure for a piece of equipment described in `Device Information Model`).

`Streams` for an [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) entity contains a [`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %}) entity for each piece of equipment represented in the document.  Each [`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %}) is comprised of two primary types of entities – <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> and <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span>.  The contents of the [`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %}) container are described in detail in this document, `Observation Information Model` of the MTConnect Standard.

<span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> are defined for both the [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) and the [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) entities.  These <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> are used to provide a logical organization of the information provided in each entity.  

* For an [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity: <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> organize information that represents the physical and logical parts and sub-parts of a piece of equipment.  (See [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) in `Device Information Model` for more details on <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> used in the [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity).  

* For an [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) entity: <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> provide the structure to organize the data returned from a piece of equipment and establishes the proper context for that data.  The <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> specifically defined for [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) are [`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %}) (see *Section DeviceStream*) and [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}) (see *Section ComponentStream*).   

[`DeviceStream`]({% link model/ObservationInformationModel/DeviceStream.md %}) and [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}) entities have a direct correlation to each of the <span class="hoverterm">Component<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> defined in the [`MTConnectDevices`]({% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}) entity.

Within each [`ComponentStream`]({% link model/ObservationInformationModel/ComponentStream.md %}) entity in the [`MTConnectStreams`]({% link model/Fundamentals/MTConnectProtocol/MTConnectStreamsResponseDocument/MTConnectStreams.md %}) entity, <span class="hoverterm">Observations<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> are modeled as [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) entities. The three types of [`Observation`]({% link model/ReferenceAgentArchitecture/InformationModel/Observation.md %}) entity are [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %}), [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}), and [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}).  (See *Section Observation Types* for more information on these entities.)


**Observations Appendix**

 

## XML Schema Diagrams

### Observations Schema Diagrams

See `Streams` element in `MTConnectStreams` schema.

See `DeviceStream` element in `MTConnectStreams` schema.

See `ComponentStream` element in `MTConnectStreams` schema.

See `Sample` element in `MTConnectStreams` schema.

See `Event` element in `MTConnectStreams` schema.

See `Condition` element in `MTConnectStreams` schema.

### Representation Schema Diagrams

See `AbsTimeSeries` element in `MTConnectStreams` schema.

See `PartCountDiscrete` element in `MTConnectStreams` schema.

See `VariableDataSet` element in `MTConnectStreams` schema.

See `Entry` element in `MTConnectStreams` schema.

See `WorkOffsetTable` element in `MTConnectStreams` schema.

## XML Examples

### DeviceStream Example

~~~~xml
<Streams>
  <DeviceStream name="M12346" uuid="M8010W4194N">
    <ComponentStream component="Device" name="M12346" componentId="d1">
      <Events>
        <Availability dataItemId="avail" sequence="156" timestamp="2021-10-01T14:26:38.668505Z">AVAILABLE</Availability>
        <AssetChanged assetType="CuttingTool" dataItemId="d1_asset_chg" sequence="75570" timestamp="2021-10-07T05:08:53.870206Z">M8010W4194N1.120</AssetChanged>
        <AssetRemoved assetType="CuttingTool" dataItemId="d1_asset_rem" sequence="140" timestamp="2021-10-01T11:40:08.101461Z">UNAVAILABLE</AssetRemoved>
      </Events>
    </ComponentStream>
    <ComponentStream component="Controller" name="controller" componentId="cont">
      <Events>
        <EmergencyStop dataItemId="estop" sequence="159" timestamp="2021-10-01T14:26:38.66869Z">ARMED</EmergencyStop>
      </Events>
      <Samples>
        <AccumulatedTime dataItemId="cut_time" sequence="75437" timestamp="2021-10-07T05:08:28.221704Z">1763070.0</AccumulatedTime>
      </Samples>
      <Condition>
        <Unavailable dataItemId="cont_system" sequence="72" timestamp="2021-10-11T21:04:03.251999Z" type="SYSTEM"/>
        <Warning dataItemId="cont_system" nativecode="313" nativeSeverity="50" sequence="75573" timestamp="2021-10-07T05:08:58.518317Z" type="LOGIC_PROGRAM">PALLET ARM DOWN RS. MALF.</Warning>
      </Condition>
    </ComponentStream>
    <ComponentStream component="Path" name="path" componentId="path1">
      <Events>
        <Execution dataItemId="execution" name="execution" sequence="222623" timestamp="2021-10-12T06:04:32.761198Z">INTERRUPTED</Execution>
        <VariableDataSet count="2" dataItemId="cvars" sequence="126513" timestamp="2021-10-12T03:57:31.106559Z">
          <Entry key="100">66.3314</Entry>
          <Entry key="101">167.2</Entry>
        </VariableDataSet>
        <WorkOffsetTable count="2" dataItemId="woffset" sequence="222101" timestamp="2021-10-12T06:04:11.990531Z">
          <Entry key="G53.1">
            <Cell key="X">1</Cell>
            <Cell key="Y">2</Cell>
            <Cell key="Z">3</Cell>
          </Entry>
          <Entry key="G53.2">
            <Cell key="X">4</Cell>
            <Cell key="Y">5</Cell>
            <Cell key="Z">6</Cell>
          </Entry>
        </WorkOffsetTable>
      </Events>
      <Samples>
        <CuttingSpeed dataItemId="cspeed" sequence="112" timestamp="2021-10-07T05:08:28.221704Z" subType="ACTUAL">UNAVAILABLE</CuttingSpeed>
      </Samples>
      <Condition>
        <Normal dataItemId="path_system" sequence="153" timestamp="2021-10-11T21:04:03.262845Z" type="SYSTEM"/>
      </Condition>
    </ComponentStream>
  </DeviceStream>
</Streams>
~~~~
{: caption="DeviceStream Example"}

### Observations made for DataItem Example

~~~~xml
<Components>
  <Controller id="cont" name="controller">
      <DataItems>
      <DataItem category="EVENT" id="estop" name="estop" type="EMERGENCY_STOP"/>
    </DataItems>
  </Controller>
</Components>
~~~~
{: caption="MTConnectDevices Response Document"}

~~~~xml
<ComponentStream component="Controller" name="controller" componentId="cont">
  <Events>
    <EmergencyStop dataItemId="estop" sequence="159" timestamp="2021-10-01T14:26:38.66869Z">ARMED</EmergencyStop>
  </Events>
</ComponentStream>
~~~~
{: caption="MTConnectStreams Response Document"}

### Sample Example

~~~~xml
<Samples>
  <AccumulatedTime dataItemId="cut_time" sequence="75437" timestamp="2021-10-07T05:08:28.221704Z">1763070.0</AccumulatedTime>
  <CuttingSpeed dataItemId="cspeed" sequence="112" timestamp="2021-10-07T05:08:28.221704Z" subType="ACTUAL">UNAVAILABLE</CuttingSpeed>
</Samples>
~~~~
{: caption="Sample Example"}

### Event Example

~~~~xml
<Events>
  <Availability dataItemId="avail" sequence="156" timestamp="2021-10-01T14:26:38.668505Z">AVAILABLE</Availability>
  <AssetRemoved assetType="CuttingTool" dataItemId="d1_asset_rem" sequence="140" timestamp="2021-10-01T11:40:08.101461Z">UNAVAILABLE</AssetRemoved>
</Events>
~~~~
{: caption="Event Example"}

### Condition Example

[`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) types are represented differently in *XML* when compared to [`Sample`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Sample.md %}) and [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}) types. The element name is the <span class="hoverterm">condition state<span class="definition" data-term="condition state">indicator of the *condition*.</span></span> of the [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) type in Pascal Case. The name of the [`Condition`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Condition.md %}) type is represented by the attribute `type`.

If the <span class="hoverterm">condition state<span class="definition" data-term="condition state">indicator of the *condition*.</span></span> is unavailable then the element name is represented by `Unavailable`.

~~~~xml
<Condition>
  <Unavailable dataItemId="cont_system" sequence="72" timestamp="2021-10-11T21:04:03.251999Z" type="SYSTEM"/>
  <Normal dataItemId="path_system" sequence="153" timestamp="2021-10-11T21:04:03.262845Z" type="SYSTEM"/>
  <Warning dataItemId="cont_system" nativecode="313" nativeSeverity="50" sequence="75573" timestamp="2021-10-07T05:08:58.518317Z" type="LOGIC_PROGRAM">PALLET ARM DOWN RS. MALF.</Warning>
</Condition>
~~~~
{: caption="Condition Example"}

### DataSet Example

~~~~xml
<Events>
  <VariableDataSet count="2" dataItemId="cvars" sequence="126513" timestamp="2021-10-12T03:57:31.106559Z">
    <Entry key="100">66.3314</Entry>
    <Entry key="101">167.2</Entry>
  </VariableDataSet>
</Events>
~~~~
{: caption="DataSet Example"}

### Table Example

~~~~xml
<Events>
  <WorkOffsetTable count="2" dataItemId="woffset" sequence="222101" timestamp="2021-10-12T06:04:11.990531Z">
    <Entry key="G53.1">
      <Cell key="X">1</Cell>
      <Cell key="Y">2</Cell>
      <Cell key="Z">3</Cell>
    </Entry>
    <Entry key="G53.2">
      <Cell key="X">4</Cell>
      <Cell key="Y">5</Cell>
      <Cell key="Z">6</Cell>
    </Entry>
  </WorkOffsetTable>
</Events>
~~~~
{: caption="Table Example"}
