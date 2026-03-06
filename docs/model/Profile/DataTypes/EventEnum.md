---
title: "EventEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 51
layout: default
---

# EventEnum

**Supertype:** `DataItemTypeEnum`

**Stereotypes:** `<<extensible>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `ACTIVATION_COUNT` | 1.8 |  |  | accumulation of the number of times a function has attempted to, or is planned to attempt to, activate or be performed. |
| 2 | `ACTIVE_AXES` | 1.1 |  |  | set of axes currently associated with a [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) or [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}). |
| 3 | `ACTIVE_POWER_SOURCE` | 2.3 |  |  | active energy source for the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). |
| 4 | `ACTUATOR_STATE` | 1.2 |  |  | operational state of an apparatus for moving or controlling a mechanism or system. |
| 5 | `ADAPTER_SOFTWARE_VERSION` | 1.7 |  |  | originator’s software version of the <span class="hoverterm">adapter<span class="definition" data-term="adapter">optional piece of hardware or software that transforms information provided by a piece of equipment into a form that can be received by an *agent*.</span></span>. |
| 6 | `ADAPTER_URI` | 1.7 |  |  | *URI* of the <span class="hoverterm">adapter<span class="definition" data-term="adapter">optional piece of hardware or software that transforms information provided by a piece of equipment into a form that can be received by an *agent*.</span></span>. |
| 7 | `ALARM` | 1.0 | 1.1 |  | **DEPRECATED:** Replaced with `CONDITION` category data items in Version 1.1.0. |
| 8 | `ALARM_LIMIT` | 1.7 | 2.5 | 2.3 | set of limits used to trigger warning or alarm indicators. **DEPRECATED** in *Version 2.5*. Replaced by `ALARM_LIMITS`. |
| 9 | `ALARM_LIMITS` | 2.3 |  |  | set of limits used to trigger warning or alarm indicators. |
| 10 | `APPLICATION` | 1.6 |  |  | application on a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). |
| 11 | `ASSET_ADDED` | 2.6 |  |  | [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` of the [`Asset`]({% link model/AssetInformationModel/Asset.md %}) that has been added. |
| 12 | `ASSET_CHANGED` | 1.2 |  | 2.6 | [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` of the [`Asset`]({% link model/AssetInformationModel/Asset.md %}) that has been changed. |
| 13 | `ASSET_COUNT` | 2.0 |  |  | <span class="hoverterm">data set<span class="definition" data-term="data set">*key-value pairs* where each entry is uniquely identified by the *key*.</span></span> of the number of <span class="hoverterm">Assets<span class="definition" data-term="Asset">*asset* that is used by the manufacturing process to perform tasks.

> Note 1 to entry: An *Asset* relies upon an *Device* to provide *observations* and information about itself and the *Device* revises the information to reflect changes to the *Asset* during their interaction. Examples of *Assets* are cutting tools, Part Information, Manufacturing Processes, Fixtures, and Files.

> Note 2 to entry: A singular [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` uniquely identifies an *Asset* throughout its lifecycle and is used to track and relate the *Asset* to other *Devices* and entities.

> Note 3 to entry: *Assets* are temporally associated with a device and can be removed from the device without damage or alteration to its primary functions.

</span></span> of a given type for a <span class="hoverterm">Device<span class="definition" data-term="Device">*Component* not belonging to any *Component* that may have *assets*</span></span>. |
| 14 | `ASSET_REMOVED` | 1.3 |  | 2.6 | [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` of the [`Asset`]({% link model/AssetInformationModel/Asset.md %}) that has been removed. |
| 15 | `ASSOCIATED_ASSET_ID` | 2.6 |  |  | [`Asset`]({% link model/AssetInformationModel/Asset.md %})::`assetId` of the [`Asset`]({% link model/AssetInformationModel/Asset.md %})s associated with a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). |
| 16 | `AVAILABILITY` | 1.1 |  |  | <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>'s ability to communicate with the data source. |
| 17 | `AXIS_COUPLING` | 1.1 |  |  | describes the way the axes will be associated to each other. This is used in conjunction with `COUPLED_AXES` to indicate the way they are interacting. |
| 18 | `AXIS_FEEDRATE_OVERRIDE` | 1.3 |  |  | value of a signal or calculation issued to adjust the feedrate of an individual linear type axis. |
| 19 | `AXIS_INTERLOCK` | 1.3 |  |  | state of the axis lockout function when power has been removed and the axis is allowed to move freely. |
| 20 | `AXIS_STATE` | 1.3 |  |  | state of a [`Linear`]({% link model/DeviceInformationModel/Components/ComponentTypes/Linear.md %}) or [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) component representing an axis. |
| 21 | `BATTERY_STATE` | 2.1 |  |  | present status of the battery. |
| 22 | `BINDING_STATE` | 2.7 |  |  | state of the binding process when [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) participates in a task as a collaborator |
| 23 | `BLOCK` | 1.0 |  |  | line of code or command being executed by a [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) entity. |
| 24 | `BLOCK_COUNT` | 1.4 |  |  | total count of the number of blocks of program code that have been executed since execution started. |
| 25 | `CHARACTERISTIC_PERSISTENT_ID` | 2.2 |  |  | *UUID* of the <span class="hoverterm">characteristic<span class="definition" data-term="characteristic">control placed on an element of a *feature* such as its size, location, or form, which may be a specification limit, a nominal with tolerance, or some other numerical or non-numerical control. <em>QIF 3.0 3.4.29</em>. <em>AS9102-B</em>.</span></span>. |
| 26 | `CHARACTERISTIC_STATUS` | 2.2 |  |  | pass/fail result of the measurement. |
| 27 | `CHUCK_INTERLOCK` | 1.3 |  |  | state of an interlock function or control logic state intended to prevent the associated [`Chuck`]({% link model/DeviceInformationModel/Components/ComponentTypes/Chuck.md %}) component from being operated. |
| 28 | `CHUCK_STATE` | 1.3 |  |  | operating state of a mechanism that holds a part or stock material during a manufacturing process. It may also represent a mechanism that holds any other mechanism in place within a piece of equipment. |
| 29 | `CLOCK_TIME` | 1.2 |  |  | time provided by a timing device at a specific point in time. |
| 30 | `CODE` | 1.0 | 1.1 |  | programmatic code being executed. **DEPRECATED** in *Version 1.1*. |
| 31 | `COMPONENT_DATA` | 2.2 |  |  | [`Event`]({% link model/DeviceInformationModel/DataItems/DataItemTypes/Event.md %}) that represents a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) where the [`EntryDefinition`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/EntryDefinition.md %}) identifies the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) and the [`CellDefinition`]({% link model/DeviceInformationModel/DataItems/PropertiesofDataItem/PropertiesofDefinition/CellDefinition.md %})s define the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})'s observed [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})s. |
| 32 | `COMPOSITION_STATE` | 1.4 |  |  | operating state of a mechanism represented by a [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) entity. |
| 33 | `CONNECTION_STATUS` | 1.7 |  |  | status of the connection between an <span class="hoverterm">adapter<span class="definition" data-term="adapter">optional piece of hardware or software that transforms information provided by a piece of equipment into a form that can be received by an *agent*.</span></span> and an <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span>. |
| 34 | `CONTROLLER_MODE` | 1.0 |  |  | current mode of the [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) component. |
| 35 | `CONTROLLER_MODE_OVERRIDE` | 1.4 |  |  | setting or operator selection that changes the behavior of a piece of equipment. |
| 36 | `CONTROL_LIMIT` | 1.7 | 2.5 | 2.3 | set of limits used to indicate whether a process variable is stable and in control. **DEPRECATED** in *Version 2.5*. Replaced by `CONTROL_LIMITS`. |
| 37 | `CONTROL_LIMITS` | 2.3 |  |  | set of limits used to indicate whether a process variable is stable and in control. |
| 38 | `COUPLED_AXES` | 1.2 |  |  | set of associated axes. |
| 39 | `CYCLE_COUNT` | 1.8 |  |  | accumulation of the number of times a cyclic function has attempted to, or is planned to attempt to execute. |
| 40 | `DATE_CODE` | 1.5 |  |  | time and date code associated with a material or other physical item. |
| 41 | `DEACTIVATION_COUNT` | 1.8 |  |  | accumulation of the number of times a function has attempted to, or is planned to attempt to, deactivate or cease. |
| 42 | `DEPTH` | 2.7 |  |  | dimension or distance as measured downwards from the top |
| 43 | `DEVICE_ADDED` | 1.7 |  |  | *UUID* of new device added to an <span class="hoverterm">MTConnect Agent<span class="definition" data-term="MTConnect Agent">*agent* for the *MTConnect Information Model*.</span></span>. |
| 44 | `DEVICE_CHANGED` | 1.7 |  |  | *UUID* of the device whose <span class="hoverterm">metadata<span class="definition" data-term="metadata">data that provides information about other data.

</span></span> has changed. |
| 45 | `DEVICE_REMOVED` | 1.7 |  |  | *UUID* of a device removed from an <span class="hoverterm">MTConnect Agent<span class="definition" data-term="MTConnect Agent">*agent* for the *MTConnect Information Model*.</span></span>. |
| 46 | `DEVICE_UUID` | 1.5 |  |  | identifier of another piece of equipment that is temporarily associated with a component of this piece of equipment to perform a particular function. |
| 47 | `DIRECTION` | 1.0 |  |  | direction of motion. |
| 48 | `DOOR_STATE` | 1.1 |  |  | operational state of a [`Door`]({% link model/DeviceInformationModel/Components/ComponentTypes/Door.md %}) component or composition element. |
| 49 | `EMERGENCY_STOP` | 1.1 |  |  | state of the emergency stop signal for a piece of equipment, controller path, or any other component or subsystem of a piece of equipment. |
| 50 | `END_OF_BAR` | 1.3 |  |  | indication of whether the end of a piece of bar stock being feed by a bar feeder has been reached. |
| 51 | `EQUIPMENT_MODE` | 1.4 |  |  | indication that a piece of equipment, or a sub-part of a piece of equipment, is performing specific types of activities. |
| 52 | `EXECUTION` | 1.0 |  | 2.3 | operating state of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). |
| 53 | `FEATURE_MEASUREMENT` | 2.2 |  |  | assessing elements of a <span class="hoverterm">feature<span class="definition" data-term="feature">topological entity(ies) or design requirements related to a geometric model. <em>QIF 3.0-3.4.59</em></span></span>. |
| 54 | `FEATURE_PERSISTENT_ID` | 2.2 |  |  | *UUID* of a <span class="hoverterm">feature<span class="definition" data-term="feature">topological entity(ies) or design requirements related to a geometric model. <em>QIF 3.0-3.4.59</em></span></span>. <em>ISO 10303 AP 242/239</em>. |
| 55 | `FIRMWARE` | 1.6 |  |  | embedded software of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) . |
| 56 | `FIXTURE_ASSET_ID` | 2.7 |  |  | [`Fixture`]({% link model/AssetInformationModel/Fixture/Fixture.md %})::`assetId` of the [`Fixture`]({% link model/AssetInformationModel/Fixture/Fixture.md %}) that is associated with a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) |
| 57 | `FIXTURE_ID` | 2.0 |  | 2.3 | identifier for the current workholding or part clamp in use by a piece of equipment. |
| 58 | `FUNCTIONAL_MODE` | 1.3 |  |  | current intended production status of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). |
| 59 | `HARDNESS` | 1.4 |  |  | hardness of a material. |
| 60 | `HARDWARE` | 1.6 |  |  | hardware of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). |
| 61 | `HOST_NAME` | 2.1 |  |  | name of the host computer supplying data. |
| 62 | `LEAK_DETECT` | 2.1 |  |  | indication designating whether a leak has been detected. |
| 63 | `LIBRARY` | 1.6 |  |  | software library on a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) |
| 64 | `LINE` | 1.0 | 1.4 |  | current line of code being executed. **DEPRECATED** in *Version 1.4.0*. |
| 65 | `LINE_LABEL` | 1.4 |  |  | identifier for a [`Block`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Block.md %}) of code in a [`Program`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Program.md %}). |
| 66 | `LINE_NUMBER` | 1.4 |  |  | position of a block of program code within a control program. |
| 67 | `LOAD_COUNT` | 1.8 |  |  | accumulation of the number of times an operation has attempted to, or is planned to attempt to, load materials, parts, or other items. |
| 68 | `LOCATION_ADDRESS` | 2.3 |  |  | structured information that allows the unambiguous determination of an object for purposes of identification and location. <em>ISO 19160-4:2017</em> |
| 69 | `LOCATION_NARRATIVE` | 2.4 |  |  | textual description of the location of an object or activity. |
| 70 | `LOCATION_SPATIAL_GEOGRAPHIC` | 2.4 |  |  | absolute geographic location defined by two coordinates, longitude and latitude and an elevation. |
| 71 | `LOCK_STATE` | 1.8 |  |  | state or operating mode of a [`Lock`]({% link model/DeviceInformationModel/Components/ComponentTypes/Lock.md %}). |
| 72 | `MAINTENANCE_LIST` | 2.0 |  |  | actions or activities to be performed in support of a piece of equipment. |
| 73 | `MATERIAL` | 1.4 |  | 2.7 | identifier of a material used or consumed in the manufacturing process |
| 74 | `MATERIAL_LAYER` | 1.5 |  |  | identifies the layers of material applied to a part or product as part of an additive manufacturing process. |
| 75 | `MEASUREMENT_TYPE` | 2.2 |  |  | class of measurement being performed. <em>QIF 3:2018 Section 6.3</em> |
| 76 | `MEASUREMENT_UNITS` | 2.2 |  |  | engineering units of the measurement. |
| 77 | `MEASUREMENT_VALUE` | 2.2 |  |  | measurement based on the measurement type. |
| 78 | `MESSAGE` | 1.1 |  |  | information to be transferred from a piece of equipment to a client software application. |
| 79 | `MTCONNECT_VERSION` | 1.7 |  |  | reference version of the MTConnect Standard supported by the <span class="hoverterm">adapter<span class="definition" data-term="adapter">optional piece of hardware or software that transforms information provided by a piece of equipment into a form that can be received by an *agent*.</span></span>. |
| 80 | `NETWORK` | 1.6 |  |  | network details of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). |
| 81 | `NETWORK_PORT` | 2.1 |  |  | number of the TCP/IP or UDP/IP port for the connection endpoint. |
| 82 | `OPERATING_MODE` | 2.0 |  |  | state of [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) or [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) that describes the automatic or manual operation of the entity. |
| 83 | `OPERATING_SYSTEM` | 1.6 |  |  | Operating System (OS) of a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). |
| 84 | `OPERATOR_ID` | 1.3 |  |  | identifier of the person currently responsible for operating the piece of equipment. |
| 85 | `PALLET_ID` | 1.2 |  |  | identifier for a pallet. |
| 86 | `PART_COUNT` | 1.0 |  |  | aggregate count of parts. |
| 87 | `PART_COUNT_TYPE` | 2.0 |  |  | interpretation of `PART_COUNT`. |
| 88 | `PART_DETECT` | 1.5 |  |  | indication designating whether a part or work piece has been detected or is present. |
| 89 | `PART_GROUP_ID` | 1.7 |  |  | identifier given to a collection of individual parts. |
| 90 | `PART_ID` | 1.1 |  |  | identifier of a part in a manufacturing operation. |
| 91 | `PART_INDEX` | 2.5 |  |  | sequence of a part in a group of parts. |
| 92 | `PART_KIND_ID` | 1.7 |  |  | identifier given to link the individual occurrence to a class of parts, typically distinguished by a particular part design. |
| 93 | `PART_NUMBER` | 1.4 | 1.7 |  | identifier of a part or product moving through the manufacturing process. **DEPRECATED** in *Version 1.7*. `PART_NUMBER` is now a `subType` of `PART_KIND_ID`. |
| 94 | `PART_PROCESSING_STATE` | 1.8 |  |  | particular condition of the part occurrence at a specific time. |
| 95 | `PART_STATUS` | 1.7 |  |  | state or condition of a part. |
| 96 | `PART_UNIQUE_ID` | 1.7 |  |  | identifier given to a distinguishable, individual part. |
| 97 | `PATH_FEEDRATE_OVERRIDE` | 1.3 |  |  | value of a signal or calculation issued to adjust the feedrate for the axes associated with a [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) component that may represent a single axis or the coordinated movement of multiple axes. |
| 98 | `PATH_MODE` | 1.1 |  |  | describes the operational relationship between a [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) entity and another [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}) entity for pieces of equipment comprised of multiple logical groupings of controlled axes or other logical operations. |
| 99 | `POWER_STATE` | 1.1 |  |  | indication of the status of the source of energy for an entity to allow it to perform its intended function or the state of an enabling signal providing permission for the entity to perform its functions. |
| 100 | `POWER_STATUS` | 1.0 | 1.1 |  | status of the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}). **DEPRECATED** in *Version 1.1.0*. |
| 101 | `PROCESS_AGGREGATE_ID` | 1.7 |  |  | identifier given to link the individual occurrence to a group of related occurrences, such as a process step in a process plan. |
| 102 | `PROCESS_KIND_ID` | 1.7 |  |  | identifier given to link the individual occurrence to a class of processes or process definition. |
| 103 | `PROCESS_OCCURRENCE_ID` | 1.7 |  |  | identifier of a process being executed by the device. |
| 104 | `PROCESS_STATE` | 1.8 |  |  | particular condition of the process occurrence at a specific time. |
| 105 | `PROCESS_TIME` | 1.5 |  |  | time and date associated with an activity or event. |
| 106 | `PROGRAM` | 1.0 |  |  | name of the logic or motion program being executed by the [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) component. |
| 107 | `PROGRAM_COMMENT` | 1.3 |  |  | comment or non-executable statement in the control program. |
| 108 | `PROGRAM_EDIT` | 1.3 |  |  | indication of the status of the [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) components program editing mode. A program may be edited while another is executed. |
| 109 | `PROGRAM_EDIT_NAME` | 1.3 |  |  | name of the program being edited. This is used in conjunction with [`ProgramEdit`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProgramEdit.md %}) when in `ACTIVE` state. |
| 110 | `PROGRAM_HEADER` | 1.3 |  |  | non-executable header section of the control program. |
| 111 | `PROGRAM_LOCATION` | 1.5 |  |  | *URI* for the source file associated with [`Program`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Program.md %}). |
| 112 | `PROGRAM_LOCATION_TYPE` | 1.5 |  |  | defines whether the logic or motion program defined by [`Program`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Program.md %}) is being executed from the local memory of the controller or from an outside source. |
| 113 | `PROGRAM_NEST_LEVEL` | 1.5 |  |  | indication of the nesting level within a control program that is associated with the code or instructions that is currently being executed. |
| 114 | `ROTARY_MODE` | 1.1 |  |  | current operating mode for a [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) type axis. |
| 115 | `ROTARY_VELOCITY_OVERRIDE` | 1.3 |  |  | percentage change to the velocity of the programmed velocity for a [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) axis. |
| 116 | `ROTATION` | 1.6 |  |  | three space angular displacement of an object or coordinate system relative to a <span class="hoverterm">cartesian coordinate system<span class="definition" data-term="cartesian coordinate system">3D orthogonal coordinate system <em>ISO/IEC 19794-5:2011(en</em>.</span></span>. |
| 117 | `SENSOR_ATTACHMENT` | 1.7 |  |  | <span class="hoverterm">attachment<span class="definition" data-term="attachment">connection by which one thing is associated with another.</span></span> between a sensor and an entity. |
| 118 | `SENSOR_STATE` | 2.2 |  |  | detection result of a sensor. |
| 119 | `SERIAL_NUMBER` | 1.4 |  |  | serial number associated with a [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}), [`Asset`]({% link model/AssetInformationModel/Asset.md %}), or [`Device`]({% link model/DeviceInformationModel/Device.md %}). |
| 120 | `SPECIFICATION_LIMIT` | 1.7 | 2.5 | 2.3 | set of limits defining a range of values designating acceptable performance for a variable. **DEPRECATED** in *Version 2.5*. Replaced by `SPECIFICATION_LIMITS`. |
| 121 | `SPECIFICATION_LIMITS` | 2.3 |  |  | set of limits defining a range of values designating acceptable performance for a variable. |
| 122 | `SPINDLE_INTERLOCK` | 1.3 |  |  | indication of the status of the spindle for a piece of equipment when power has been removed and it is free to rotate. |
| 123 | `SWING_ANGLE` | 2.7 |  |  | angular range over which the object is designed to move about a fixed axis or pivot |
| 124 | `SWING_DIAMETER` | 2.7 |  |  | maximal linear width (diameter) of the area described by the object’s movement about an axis |
| 125 | `SWING_RADIUS` | 2.7 |  |  | maximal linear distance from the pivot or axis to the furthest point reached by the object’s swing |
| 126 | `TASK_ASSET_ID` | 2.7 |  |  | [`Task`]({% link model/AssetInformationModel/Task/Task.md %})::`assetId` of the [`Task`]({% link model/AssetInformationModel/Task/Task.md %}) that the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) binds to |
| 127 | `THICKNESS` | 2.4 |  |  | dimension between two surfaces of an object, usually the dimension of smallest measure, for example an additive layer, or a depth of cut. |
| 128 | `TOOL_ASSET_ID` | 1.2 |  |  | identifier of an individual tool asset. |
| 129 | `TOOL_CUTTING_ITEM` | 2.3 |  |  | references the [`CuttingToolLifeCycle`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}) [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}) index related to the [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %})::`indices` of the currently active cutting tool edge. |
| 130 | `TOOL_GROUP` | 1.5 |  |  | identifier for the tool group associated with a specific tool. Commonly used to designate spare tools. |
| 131 | `TOOL_ID` | 1.1 | 1.2 | 2.5 | identifier of the tool currently in use for a given `Path`. **DEPRECATED** in *Version 1.2.0*. See `TOOL_NUMBER`. |
| 132 | `TOOL_NUMBER` | 1.2 |  |  | identifier assigned by the [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) component to a cutting tool when in use by a piece of equipment. |
| 133 | `TOOL_OFFSET` | 1.4 |  |  | reference to the tool offset variables applied to the active cutting tool. |
| 134 | `TOOL_OFFSETS` | 2.2 |  |  | properties of each addressable tool offset. |
| 135 | `TRANSFER_COUNT` | 1.8 |  |  | accumulation of the number of times an operation has attempted to, or is planned to attempt to, transfer materials, parts, or other items from one location to another. |
| 136 | `TRANSLATION` | 1.6 |  |  | three space linear displacement of an object or coordinate system relative to a <span class="hoverterm">cartesian coordinate system<span class="definition" data-term="cartesian coordinate system">3D orthogonal coordinate system <em>ISO/IEC 19794-5:2011(en</em>.</span></span>. |
| 137 | `UNCERTAINTY` | 2.2 |  |  | <span class="hoverterm">uncertainty<span class="definition" data-term="uncertainty">uncertainty (of measurement) parameter, associated with the result of a measurement, that characterizes the dispersion of the values that could reasonably be attributed to the measurand. <em>JCGM 100:2008 2.2.3</em>

> Note: Use of the term uncertainty refers to uncertainty of measurement.</span></span> specified by [`UncertaintyType`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/UncertaintyType.md %}). |
| 138 | `UNCERTAINTY_TYPE` | 2.2 |  |  | method used to compute <span class="hoverterm">standard uncertainty<span class="definition" data-term="standard uncertainty">*uncertainty* of the result of a measurement expressed as a standard deviation. <em>JCGM 100:2008 2.3.1</em></span></span>. |
| 139 | `UNLOAD_COUNT` | 1.8 |  |  | accumulation of the number of times an operation has attempted to, or is planned to attempt to, unload materials, parts, or other items. |
| 140 | `USER` | 1.4 |  |  | identifier of the person currently responsible for operating the piece of equipment. |
| 141 | `VALVE_STATE` | 1.8 |  |  | state of a valve is one of open, closed, or transitioning between the states. |
| 142 | `VARIABLE` | 1.5 |  |  | data whose meaning may change over time due to changes in the operation of a piece of equipment or the process being executed on that piece of equipment. |
| 143 | `WAIT_STATE` | 1.5 |  |  | indication of the reason that [`Execution`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Execution.md %}) is reporting a value of `WAIT`. |
| 144 | `WIRE` | 1.4 |  |  | identifier for the type of wire used as the cutting mechanism in Electrical Discharge Machining or similar processes. |
| 145 | `WORKHOLDING_ID` | 1.1 |  | 2.3 | identifier for the current workholding or part clamp in use by a piece of equipment. **DEPRECATION WARNING**: Recommend using `FIXTURE_ID` instead. |
| 146 | `WORK_OFFSET` | 1.4 |  |  | reference to offset variables for a work piece or part. |
| 147 | `WORK_OFFSETS` | 2.2 |  |  | properties of each addressable work offset. |

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ConditionEnum`]({% link model/Profile/DataTypes/ConditionEnum.md %}) | 1.1 |  |

