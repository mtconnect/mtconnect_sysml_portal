---
title: "Device Information Model Package"
nav_order: 3
has_children: true
layout: default
---

# Device Information Model Package

The <span class="hoverterm">Device Information Model<span class="definition" data-term="Device Information Model">*information model* that describes the physical and logical configuration for a piece of equipment and the data that may be reported by that equipment. </span></span> provides a representation of the physical and logical configuration for a piece of equipment used for a manufacturing process or for any other purpose.  It also provides the definition of data that may be reported by that equipment. 

Using information defined in the <span class="hoverterm">Device Information Model<span class="definition" data-term="Device Information Model">*information model* that describes the physical and logical configuration for a piece of equipment and the data that may be reported by that equipment. </span></span>, a software application can determine the configuration and reporting capabilities of a piece of equipment.  To do this, the software application issues a <span class="hoverterm">probe request<span class="definition" data-term="probe request">*request* to an *agent* to produce an *MTConnectDevices Response Document* containing the *Device Information Model*.</span></span> (defined in `Fundamentals`) to an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> associated with a piece of equipment. An <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> responds to the <span class="hoverterm">probe request<span class="definition" data-term="probe request">*request* to an *agent* to produce an *MTConnectDevices Response Document* containing the *Device Information Model*.</span></span> with an <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span> that contains information describing both the physical and logical structure of the piece of equipment and a detailed description of each <span class="hoverterm">Observation<span class="definition" data-term="Observation">*observation* that provides telemetry data for a *DataItem*.</span></span> that can be reported by the <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> associated with the piece of equipment. This information allows the client software application to interpret the document and to extract the data with the same meaning, value, and context that it had at its original source.  

The <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span> is comprised of two sections: [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %}) and `Devices`.

The [`Header`]({% link model/Fundamentals/MTConnectProtocol/MTConnectErrorsResponseDocument/Header.md %}) section contains protocol related information as defined in `Fundamentals`.

The `Devices` section of the <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span> contains a [`Device`]({% link model/DeviceInformationModel/Device.md %}) entity for each piece of equipment described in the document.  Each [`Device`]({% link model/DeviceInformationModel/Device.md %}) is comprised of two primary types of entities - <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> and <span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span>.  

<span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> organize information that represents the physical and logical parts and sub-parts of a piece of equipment (See `Components` for more details).  

<span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> describe data that can be reported by a piece of equipment.  In the <span class="hoverterm">Device Information Model<span class="definition" data-term="Device Information Model">*information model* that describes the physical and logical configuration for a piece of equipment and the data that may be reported by that equipment. </span></span>, <span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> are defined as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) entities (See `DataItem Types`).

The <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span> and <span class="hoverterm">DataItems<span class="definition" data-term="DataItem">*observable* observed by a *Component* that may make *Observations*</span></span> in the <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span> provide information representing the physical and logical structure for a piece of equipment and the types of data that the piece of equipment can report relative to that structure.   The <span class="hoverterm">MTConnectDevices Response Document<span class="definition" data-term="MTConnectDevices Response Document">*response document* published by an *MTConnect Agent* in response to a *probe request*.</span></span> does not contain values for the data types reported by the piece of equipment.  The <span class="hoverterm">MTConnectStreams Response Document<span class="definition" data-term="MTConnectStreams Response Document">*response document* published by an *MTConnect Agent* in response to a *current request* or a *sample request*.</span></span> defined in `Observation Information Model` provides the data values that are reported by the piece of equipment.

> Note:  The MTConnect Standard also defines the information model for <span class="hoverterm">assets<span class="definition" data-term="asset">item, thing or entity that has potential or actual value to an organization. <em>ISO 55000:2014</em>

> Note 1 to entry: Value can be tangible or intangible, financial or non-financial, and includes consideration of risks and liabilities. It can be positive or negative at different stages of the asset life.

> Note 2 to entry: Physical assets usually refer to equipment, inventory and properties owned by the organization. Physical assets are the opposite of intangible assets, which are non-physical assets such as leases, brands, digital assets, use rights, licences, intellectual property rights, reputation or agreements.

> Note 3 to entry: A grouping of assets referred to as an asset system could also be considered as an asset.

</span></span>.  An <span class="hoverterm">asset<span class="definition" data-term="asset">item, thing or entity that has potential or actual value to an organization. <em>ISO 55000:2014</em>

> Note 1 to entry: Value can be tangible or intangible, financial or non-financial, and includes consideration of risks and liabilities. It can be positive or negative at different stages of the asset life.

> Note 2 to entry: Physical assets usually refer to equipment, inventory and properties owned by the organization. Physical assets are the opposite of intangible assets, which are non-physical assets such as leases, brands, digital assets, use rights, licences, intellectual property rights, reputation or agreements.

> Note 3 to entry: A grouping of assets referred to as an asset system could also be considered as an asset.

</span></span> is something that is used in the manufacturing process, but is not permanently associated with a single piece of equipment, can be removed from the piece of equipment without compromising its function, and can be associated with other pieces of equipment during its lifecycle.  See `Asset Information Model` for more details on <span class="hoverterm">assets<span class="definition" data-term="asset">item, thing or entity that has potential or actual value to an organization. <em>ISO 55000:2014</em>

> Note 1 to entry: Value can be tangible or intangible, financial or non-financial, and includes consideration of risks and liabilities. It can be positive or negative at different stages of the asset life.

> Note 2 to entry: Physical assets usually refer to equipment, inventory and properties owned by the organization. Physical assets are the opposite of intangible assets, which are non-physical assets such as leases, brands, digital assets, use rights, licences, intellectual property rights, reputation or agreements.

> Note 3 to entry: A grouping of assets referred to as an asset system could also be considered as an asset.

</span></span>.


**Devices Appendix**

 

## XML Schema Diagrams

See XML schemas for the MTConnect standard here: [//schemas.mtconnect.org/](https://schemas.mtconnect.org/).

### Components Schema Diagrams

See `Components` element in `MTConnectDevices` schema.

See `Description` element in `MTConnectDevices` schema.

### DataItems Schema Diagrams

See `DataItems` element in `MTConnectDevices` schema.

See `Source` element in `MTConnectDevices` schema.

See `Constraints` element in `MTConnectDevices` schema.

See `Filter` element in `MTConnectDevices` schema.

See `Definition` element in `MTConnectDevices` schema.

### References Schema Diagrams

See `References` element in `MTConnectDevices` schema.

See `ComponentRef` element in `MTConnectDevices` schema.

See `DataItemRef` element in `MTConnectDevices` schema.

### Configuration Schema Diagrams

See `Configuration` element in `MTConnectDevices` schema.

See `CoordinateSystem` element in `MTConnectDevices` schema.

See `Motion` element in `MTConnectDevices` schema.

See `Relationships` element in `MTConnectDevices` schema.

See `ComponentRelationship` element in `MTConnectDevices` schema.

See `DeviceRelationship` element in `MTConnectDevices` schema.

See `SensorConfiguration` element in `MTConnectDevices` schema.

See `SolidModel` element in `MTConnectDevices` schema.

See `Specifications` element in `MTConnectDevices` schema.

See `ProcessSpecification` element in `MTConnectDevices` schema.

## XML Examples

### Device Entity Hierarchy Example

~~~~xml
<Devices>
  <Device id="d1" name="M12346" uuid="M80104K162N">
    <Components>
    <Axes id="a" name="base">
    <Components>
      <Linear id="x" name="X"/>
      <Linear id="y" name="Y"/>
      <Linear id="z" name="Z"/>
      <Rotary id="ar" name="B"/>
      <Linear id="w" name="Z3" nativeName="W"/>
      <Rotary id="c" name="C"/>
    </Components>
    </Axes>
    <Controller id="cont" name="controller">
    <Components>
      <Path id="path1" name="path"/>
    </Components>
    </Controller>
    <Door id="door1" name="door"/>
    <Systems id="systems" name="systems">
    <Components>
      <WorkEnvelope id="we1" name="workenv">
      <Compositions>
        <Composition type="WORKPIECE" id="wp"/>
        <Composition type="TABLE" id="tbl"/>
      </Compositions>
      </WorkEnvelope>
      <Electric id="elec" name="electric"/>
      <Hydraulic id="hydraulic" name="hydraulic"/>
      <Coolant id="coolant" name="coolant"/>
      <Pneumatic id="pneumatic" name="pneumatic"/>
      <Lubrication id="lubrication" name="lubrication"/>
    </Components>
    </Systems>
    <Auxiliaries id="Aux" name="auxiliaries">
    <Components>
      <Environmental id="room" name="environmental"/>
    </Components>
    </Auxiliaries>
    <Resources id="resources" name="resources">
    <Components>
      <Personnel id="personnel" name="personnel"/>
      <Materials id="materials" name="materials">
      <Components>
        <Stock id="procstock" name="stock"/>
      </Components>
      <Materials/>
    </Components> 
    </Resources>
    </Components>
  </Device>
</Devices>
~~~~
{: caption="Device Entity Hierarchy Example"}

### Component Example

~~~~xml
<Devices>
  <Device id="d1" name="M12346" uuid="M80104K162N">
    <Description manufacturer="Example_Corporation" 
      serialNumber="272237"> Mill w/SMooth-G
    </Description>
  <DataItems>
    <DataItem category="EVENT" id="avail" name="avail" type="AVAILABILITY"/>
    <DataItem category="EVENT" id="d1_asset_chg" name="asset_chg" type="ASSET_CHANGED"/>
    <DataItem category="EVENT" id="d1_asset_rem" name="asset_rem" type="ASSET_REMOVED"/>
  </DataItems>
    <Components>
    <Controller id="cont" name="controller">
      <DataItems>
      <DataItem category="EVENT" id="estop" name="estop" type="EMERGENCY_STOP"/>
      <DataItem category="CONDITION" id="logic_cond" type="LOGIC_PROGRAM"/>
      <DataItem category="CONDITION" id="cont_system" type="SYSTEM"/>
      <DataItem category="SAMPLE" id="cut_time" type="ACCUMULATED_TIME" units="SECOND"/>
    </DataItems>
    <Components>
      <Path id="path1" name="path">
        <DataItems>
        <DataItem category="EVENT" id="execution" name="execution" type="EXECUTION"/>
        <DataItem category="SAMPLE" id="cspeed" subType="ACTUAL" type="CUTTING_SPEED" units="MILLIMETER/SECOND"/>
        <DataItem category="CONDITION" id="path_system" type="SYSTEM"/>
        <DataItem category="EVENT" id="cvars" representation="DATA_SET" type="VARIABLE"/>
        <DataItem category="EVENT" id="woffset" representation="TABLE" type="WORK_OFFSET"/>
      </DataItems>
      </Path>
    </Components>
    </Controller>
  </Components>
  </Device>
</Devices>
~~~~
{: caption="Component Example"}

### Component with Compositions Example

In *XML*, `Composition` types are represented differently than `Component` types. For `Component` types, the element name is Pascal Case of the `Component` type name. Whereas, the element name for all `Composition`types is `Composition` and the type is defined by the `type` attribute of the element (see example below).

~~~~xml
<WorkEnvelope id="we1" name="workenv">
  <DataItems>
    <DataItem category="CONDITION" id="hardware1" name="hardware1" type="HARDWARE"/>
  </DataItems>
  <Compositions>
  <Composition type="WORKPIECE" id="wp"/>
  <Composition type="TABLE" id="tbl"/>
  </Compositions>
</WorkEnvelope>
~~~~
{: caption="Component with Compositions Example"}

### CoordinateSystem Example

~~~~xml
<Devices>
  <Device id="d1" name="M12346" uuid="M80104K162N">
    <Description manufacturer="Example_Corporation" 
      serialNumber="272237"> Mill w/SMooth-G
    </Description>
    <DataItems>
      <DataItem id="avail" type="AVAILABILITY" category="EVENT"/>
      <DataItem category="EVENT" id="d1_asset_chg" name="asset_chg" type="ASSET_CHANGED"/>
      <DataItem category="EVENT" id="d1_asset_rem" name="asset_rem" type="ASSET_REMOVED"/>
    </DataItems>
    <Configuration>
      <CoordinateSystems>
        <CoordinateSystem id="base" type="BASE">
          <Origin>0 0 0</Origin>
        </CoordinateSystem>
        <CoordinateSystem id="machcoord" type="MACHINE" parentIdRef="base">
          <Transformation>
            <Translation>210 275 1430</Translation>
            <Rotation>0 0 0</Rotation>
          </Transformation>
        </CoordinateSystem>
        <CoordinateSystem id="workcoord" type="OBJECT" parentIdRef="machcoord">
          <Transformation>
            <Translation>0 0 0</Translation>
            <Rotation>0 0 0</Rotation>
          </Transformation>
        </CoordinateSystem>
      </CoordinateSystems>
    </Configuration>
  </Device>
</Devices>
~~~~
{: caption="CoordinateSystem Example"}

### Motion Example

~~~~xml
<Devices>
  <Device id="d1" name="M12346" uuid="M80104K162N">
    <Description manufacturer="Example_Corporation" 
      serialNumber="272237"> Mill w/SMooth-G
    </Description>
    <DataItems>
      <DataItem id="avail" type="AVAILABILITY" category="EVENT"/>
      <DataItem category="EVENT" id="d1_asset_chg" name="asset_chg" type="ASSET_CHANGED"/>
      <DataItem category="EVENT" id="d1_asset_rem" name="asset_rem" type="ASSET_REMOVED"/>
    </DataItems>
    <Configuration>
      <CoordinateSystems>
        <CoordinateSystem id="base" type="BASE">
          <Origin>0 0 0</Origin>
        </CoordinateSystem>
        <CoordinateSystem id="machcoord" type="MACHINE" parentIdRef="base">
          <Transformation>
            <Translation>210 275 1430</Translation>
            <Rotation>0 0 0</Rotation>
          </Transformation>
        </CoordinateSystem>
        <CoordinateSystem id="workcoord" type="OBJECT" parentIdRef="machcoord">
          <Transformation>
            <Translation>0 0 0</Translation>
            <Rotation>0 0 0</Rotation>
          </Transformation>
        </CoordinateSystem>
      </CoordinateSystems>
    </Configuration>
    <Components>
      <Axes id="a" name="base">
        <Components>
          <Linear id="x" name="X">
            <Configuration>
              <Motion id="xmotion" coordinateSystemIdRef="machcoord" type="PRISMATIC" actuation="DIRECT">
                <Transformation>
                  <Translaton>300 915 590</Translaton>
                  <Rotation>0 0 0</Rotation>
                </Transformation>
                <Axis>1.0 0 0</Axis>
              </Motion>
            </Configuration>
          </Linear>
          <DataItems>
            <DataItem id="xtravel" type="SYSTEM" category="CONDITION">
          </DataItems>
        </Components>
      </Axes>
    </Components>
  </Device>
</Devices>
~~~~
{: caption="Motion Example"}

### Relationship Example

~~~~xml
<Components>
  <Axes id="a" name="base">
    <Components>
      <Linear id="x" name="X">
        <Configuration>        
          <Relationships>
            <ComponentRelationship id="xpar" type="PARENT" idRef="we1"/>
          </Relationships>
        </Configuration>
      </Linear>
      <DataItems>
        <DataItem id="xtravel" type="SYSTEM" category="CONDITION">
      </DataItems>
    </Components>
  </Axes>
  <Systems id="systems" name="systems">
    <Components>
      <WorkEnvelope id="we1" name="workenv">
        <Compositions>
          <Composition type="WORKPIECE" id="wp"/>
          <Composition type="TABLE" id="tbl"/>
        </Compositions>
        <DataItems>
          <DataItem id="we1cond" type="SYSTEM" category="CONDITION">
        </DataItems>
      </WorkEnvelope>
    </Components>
  </Systems>
</Components>
~~~~
{: caption="Relationship Example"}
      
### SolidModel Example

~~~~xml
<Devices>
  <Device id="d1" name="M12346" uuid="M80104K162N">
    <Description manufacturer="Example_Corporation" 
      serialNumber="272237"> Mill w/SMooth-G
    </Description>
    <DataItems>
      <DataItem id="avail" type="AVAILABILITY" category="EVENT"/>
      <DataItem category="EVENT" id="d1_asset_chg" name="asset_chg" type="ASSET_CHANGED"/>
      <DataItem category="EVENT" id="d1_asset_rem" name="asset_rem" type="ASSET_REMOVED"/>
    </DataItems>
    <Configuration>
      <CoordinateSystems>
        <CoordinateSystem id="base" type="BASE">
          <Origin>0 0 0</Origin>
        </CoordinateSystem>
        <CoordinateSystem id="machcoord" type="MACHINE" parentIdRef="base">
          <Transformation>
            <Translation>210 275 1430</Translation>
            <Rotation>0 0 0</Rotation>
          </Transformation>
        </CoordinateSystem>
        <CoordinateSystem id="workcoord" type="OBJECT" parentIdRef="machcoord">
          <Transformation>
            <Translation>0 0 0</Translation>
            <Rotation>0 0 0</Rotation>
          </Transformation>
        </CoordinateSystem>
      </CoordinateSystems>
    </Configuration>
    <Components>
      <Structures id="struct">
        <Configuration>
          <SolidModel id="model" mediaType="OBJ" href="/objs/mazak.obj" coordinateSystemIdRef="base">
            <Transformation>
              <Translation>0 860 0</Translation>
              <Rotation>-90 0 0</Rotation>
            </Transformation>
            <Scale>0.001 0.001 0.001</Scale>
          </SolidModel>
        </Configuration>
        <Components>
          <Structure id="xaxis" name="X_AXIS">
            <Configuration>
              <SolidModel id="x_model" mediaType="OBJ" itemRef="xaxis" solidModelIdRef="model" coordinateSystemIdRef="base"/>
            </Configuration>
            <DataItems>
              <DataItem type="SYSTEM" category="CONDITION" id="struct_cond"/>
            </DataItems>
          </Structure>
        </Components>
      </Structures>
    </Components>
  </Device>
</Devices>
~~~~
{: caption="SolidModel Example"}

### Specification Example

~~~~xml
<Components>
  <Axes id="a" name="base">
    <Components>
      <Linear id="x" name="X">
        <Configuration>
          <Specifications>
            <Specification id="spec001" type="LENGTH" units="MILLIMETER">
              <Nominal>650</Nominal>
            </Specification>
            <Specification id="spec002" type="LINEAR_FORCE" units="NEWTON">
              <Maximum>5200</Maximum>
              <Minimum>0</Minimum>
            </Specification>
          </Specifications>
        </Configuration>
        <DataItems>
          <DataItem id="xtravel" type="SYSTEM" category="CONDITION">
        </DataItems>
      </Linear>
    </Components>
  </Axes>
</Components>
~~~~
{: caption="Specification Example"}

### Example of sensing element provided as data item associated with a Component

~~~~xml
<Components>
  <Axes id="a" name="base"
    <Components>
      <Rotary id="c" name="C">
        <DataItems>
          <DataItem type="TEMPERATURE" id="servotemp4"
            category="SAMPLE" nativeUnits="CELSIUS"
            compositionId="Bmotor" units="CELSIUS"/>
          </DataItems>
      </Rotary>
    </Components>
  </Axes>
</Components>
~~~~
{: caption="Example of sensing element provided as data item associated with a Component"}

### Example of Sensor for rotary axis

~~~~xml
<Components>
  <Axes id="a" name="base"
    <Components>
      <Rotary id="ar" name="B">
        <Components>
          <Sensor id="spdlm" name="Spindlemonitor">
            <DataItems>
              <DataItem type="DISPLACEMENT" id="cvib"
                category="SAMPLE" name="Svib" 
                units="MILLIMETER"/>
            </DataItems>
          </Sensor >
        <Components>
      </Rotary>
    </Components>
  </Axes>
</Components>
~~~~
{: caption="Example of Sensor for rotary axis"}

### Example of sensor unit with sensing element

~~~~xml
<Axes id="a" name="base"
  <Components>
  <Sensor id="sens1" name="Sensorunit">
    <DataItems>
    <DataItem type="TEMPERATURE" id="sentemp"
      category="SAMPLE" name="Sensortemp" 
      units="CELSIUS"/> 
    </DataItems>
  </Sensor >
  <Linear id="x" name="X">
    <DataItems>
    <DataItem type="DISPLACEMENT" id="xvib"
      category="SAMPLE" name="xvib" 
      units="MILLIMETER">
      <Source componentId="sens1"/>
    </DataItem>
    </DataItems>
  </Rotary>
  <Linear id="y" name="Y">
    <DataItems>
    <DataItem type="DISPLACEMENT" id="yvib" 
      category="SAMPLE" name="yvib" 
      units="MILLIMETER">
      <Source componentId="sens1"/>
    </DataItem>
    </DataItems>
  </Linear>
  <Components>
</Axes>
~~~~
{: caption="Example of sensor unit with sensing element"}

### Example of configuration data for Sensor

~~~~xml
<Sensor id="sensor" name="sensor">
  <Configuration>
    <SensorConfiguration>
      <FirmwareVersion>2.02</FirmwareVersion>
      <CalibrationDate>2010-05-16</CalibrationDate>
      <NextCalibrationDate>2010-05-16</NextCalibrationDate>
      <CalibrationInitials>WS</CalibrationInitials>
      <Channels>
        <Channel number="1" name="A/D:1">
          <Description>A/D With Thermister</Description>
        </Channel>
      </Channels>
    </SensorConfiguration>
  </Configuration>
  <DataItems>
    <DataItem category="CONDITION" id="sensorc" 
      name="sensorc" type="SYSTEM" />
    <DataItem category="SAMPLE" id="senv" name="sensorc"
      type="VOLTAGE_DC" units="VOLT" subType="ACTUAL" />
  </DataItems>
</Sensor>
~~~~
{: caption="Example of configuration data for Sensor"}  
