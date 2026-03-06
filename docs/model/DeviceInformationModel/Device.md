---
title: "Device"
parent: "Device Information Model Package"
nav_order: 6
layout: default
---

# Device

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

[`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) composed of a piece of equipment that produces <span class="hoverterm">observations<span class="definition" data-term="observation">observed value of a property at a point in time.</span></span> about itself.

### Description

A [`Device`]({% link model/DeviceInformationModel/Device.md %}) <span class="hoverterm">organizes<span class="definition" data-term="organize">act of containing and owning one or more elements.</span></span> its parts as [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) entities.

A [`Device`]({% link model/DeviceInformationModel/Device.md %}) **MUST** have a [`Device`]({% link model/DeviceInformationModel/Device.md %})::`name` and [`Device`]({% link model/DeviceInformationModel/Device.md %})::`uuid` to identify itself. 

A [`Device`]({% link model/DeviceInformationModel/Device.md %}) **MUST** have the following `DataItems`: [`Availability`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/Availability.md %}), [`AssetChanged`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/AssetChanged.md %}), and [`AssetRemoved`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/AssetRemoved.md %}).

See `Components` for more details on the properties of [`Device`]({% link model/DeviceInformationModel/Device.md %}).

> See *Section Part Properties of Device* for a list of <span class="hoverterm">top level<span class="definition" data-term="top level">element that represents the most significant physical or logical functions of a piece of equipment.</span></span> [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) types for a [`Device`]({% link model/DeviceInformationModel/Device.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasAuxiliary</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/Auxiliary.md %}"><code>Auxiliary</code></a></td><td>1.4</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Auxiliaries`)

</td>
</tr>
<tr><td><code>hasController</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}"><code>Controller</code></a></td><td>2.0</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Controllers`)

</td>
</tr>
<tr><td><code>hasInterface</code></td><td><a href="{% link model/InterfaceInteractionModel/Interface.md %}"><code>Interface</code></a></td><td>1.3</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Interfaces`)

</td>
</tr>
<tr><td><code>hasResource</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/Resource.md %}"><code>Resource</code></a></td><td>1.4</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Resources`)

</td>
</tr>
<tr><td><code>hasStructure</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/Structure.md %}"><code>Structure</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Structures`)

</td>
</tr>
<tr><td><s><code>iso841Class</code></s></td><td><code>string</code></td><td>1.0</td><td>1.2</td><td>0..1</td>
<td markdown="block">

**DEPRECATED** in *MTConnect Version 1.2*. 

</td>
</tr>
<tr><td><code>uuid</code></td><td><code>UUID</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

universally unique identifier for the element. 

</td>
</tr>
<tr><td><code>mtconnectVersion</code></td><td><code>string</code></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

MTConnect version of the <span class="hoverterm">Device Information Model<span class="definition" data-term="Device Information Model">*information model* that describes the physical and logical configuration for a piece of equipment and the data that may be reported by that equipment. </span></span> used to configure the information to be published for a piece of equipment in an <span class="hoverterm">MTConnect Response Document<span class="definition" data-term="MTConnect Response Document">*response document* published by an *MTConnect Agent*.</span></span>. 

</td>
</tr>
<tr><td><code>hasSystem</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/System.md %}"><code>System</code></a></td><td>1.1</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Systems`)

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.0</td><td></td><td>1</td>
<td markdown="block">

name of an element or a piece of equipment. 

</td>
</tr>
<tr><td><code>hasAxis</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/Axis.md %}"><code>Axis</code></a></td><td>1.0</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Axes`)

</td>
</tr>
<tr><td><code>hasAdapter</code></td><td><a href="{% link model/DeviceInformationModel/Components/ComponentTypes/Adapter.md %}"><code>Adapter</code></a></td><td>1.7</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Adapters`)

</td>
</tr>
<tr><td><code>hash</code></td><td><code>string</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

condensed message digest from a secure one-way hash function. <em>FIPS PUB 180-4</em> 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesAvailability</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/Availability.md %}"><code>Availability</code></a></td><td>1.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesAssetChanged</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/AssetChanged.md %}"><code>AssetChanged</code></a></td><td>1.2</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesAssetRemoved</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/AssetRemoved.md %}"><code>AssetRemoved</code></a></td><td>1.3</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isDeviceOf</code></td><td><a href="{% link model/Fundamentals/MTConnectProtocol/MTConnectDevicesResponseDocument/MTConnectDevices.md %}"><code>MTConnectDevices</code></a></td><td>1.0</td><td></td><td>1..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Operations

### part_arrived
#### Description

None"

#### Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
|  |  |   |

#### Parameters:
<table><thead><tr><th>Name</th><th>Int</th><th>Dep</th><th>Type</th><th>Multiplicity</th><th>Default Value</th><th>Description</th></tr></thead><tbody>
</tbody></table>

#### Results:

<table><thead><tr><th>Name</th><th>Type</th><th>Documentation</th></tr></thead><tbody>
</tbody></table>

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

All [`Device`]({% link model/DeviceInformationModel/Device.md %}) entities **MUST** have [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) of `type`s `AVAILABILITY`, `ASSET_CHANGED` and `ASSET_REMOVED`.

</td><td markdown="block">

```
Components::Devices::Device::allInstances()->iterate(device;devicecount:Real=0|
if device.observes->size() >= 3
then 
    if device.observes->iterate(av;avail:Real=0|if av.oclAsType(DataItems::"DataItem Types"::Event).type = DataTypes::EventEnum::AVAILABILITY then avail+1 else avail+0 endif) = 1
    then if device.observes->iterate(ac;assetc:Real=0|if ac.oclAsType(DataItems::"DataItem Types"::Event).type = DataTypes::EventEnum::ASSET_CHANGED then assetc+1 else assetc+0 endif) = 1
        then if device.observes->iterate(ar;assetr:Real=0|if ar.oclAsType(DataItems::"DataItem Types"::Event).type = DataTypes::EventEnum::ASSET_REMOVED then assetr+1 else assetr+0 endif) = 1
            then devicecount + 1
            else devicecount + 0
            endif
        else devicecount + 0
        endif
    else devicecount + 0
    endif
else devicecount + 0
endif) = hasDevice->size()
```

</td></tr>

<tr><td markdown="block">

[`Device`]({% link model/DeviceInformationModel/Device.md %}) **MUST** have at least one of [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}), [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) or [`Reference`]({% link model/DeviceInformationModel/References/Reference.md %}) entities.

</td><td markdown="block">

```
Components::Devices::Device::allInstances()->iterate(device;devicecount:Real=0|
if device.id->size() = 1 and 
    device.name->size() = 1 and
    device.uuid->size() = 1 and
    (device.observes->size() > 0 or device.hasReference->size() > 0 or device.hasComponent->size() > 0) 
then
    devicecount + 1
else
    devicecount + 0
endif
) = Components::Devices::Device::allInstances()->size()
```

</td></tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Agent`]({% link model/DeviceInformationModel/Components/Devices/Agent.md %}) | 1.7 |  |

