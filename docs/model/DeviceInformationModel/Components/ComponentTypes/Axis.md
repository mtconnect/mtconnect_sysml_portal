---
title: "Axis"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 8
layout: default
---

# Axis

**Supertype:** `Component`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

abstract [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) composed of a motion system that provides linear or rotational motion for a piece of equipment.

### Description

In robotics, the term *Axis* is synonymous with *Joint*. A *Joint* is the connection between two parts of the structure that move in relation to each other.

[`Linear`]({% link model/DeviceInformationModel/Components/ComponentTypes/Linear.md %}) and [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) components **MUST** have [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`name` that **MUST** follow the conventions described below. Use the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`nativeName` for the manufacturer's name of the axis if it differs from the assigned [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`name`.

MTConnect has two high-level classes for automation equipment as follows: (1) Equipment that controls cartesian coordinate axes and (2) Equipment that controls articulated axes. There are ambiguous cases where some machines exhibit both characteristics; when this occurs, the primary control system's configuration determines the classification.

Examples of cartesian coordinate equipment are CNC Machine Tools, Coordinate measurement machines, as specified in ISO 841, and 3D Printers. Examples of articulated automation equipment are Robotic systems as specified in ISO 8373.

The following sections define the designation of names for the axes and additional guidance when selecting the correct scheme to use for a given piece of equipment.

#### Cartesian Coordinate Naming Conventions

A Three-Dimensional Cartesian Coordinate control system organizes its axes orthogonally relative to a machine coordinate system where the manufacturer of the equipment specifies the origin. 

[`Axes`]({% link model/DeviceInformationModel/Components/ComponentTypes/ComponentOrganizerTypes/Axes.md %}) [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`name` **SHOULD** comply with ISO 841, if possible.

##### Linear Motion

A piece of equipment **MUST** represent prismatic motion using a [`Linear`]({% link model/DeviceInformationModel/Components/ComponentTypes/Linear.md %}) axis and assign its [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`name` using the designations `X`, `Y`, and `Z`. A [`Linear`]({% link model/DeviceInformationModel/Components/ComponentTypes/Linear.md %}) axis [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`name` **MUST** append a monotonically increasing suffix when there are more than one parallel axes; for example, `X2`, `X3`, and `X4`. 

##### Rotary Motion

MTConnect **MUST** assign the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`name` to [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) axes exhibiting rotary motion using `A`, `B`, and `C`. A [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) axis [`Component`]({% link model/DeviceInformationModel/Components/Component.md %})::`name` **MUST** append a monotonically increasing suffix when more than one [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) axis rotates around the same [`Linear`]({% link model/DeviceInformationModel/Components/ComponentTypes/Linear.md %}) axis; for example, `A2`, `A3`, and `A4`. 

#### Articulated Machine Control Systems

An articulated control system's axes represent the connecting linkages between two adjacent rigid members of an assembly. The [`Linear`]({% link model/DeviceInformationModel/Components/ComponentTypes/Linear.md %}) axis represents prismatic motion, and the [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) axis represents the rotational motion of the two related members. The control organizes the axes in a kinematic chain from the mounting surface (base) to the end-effector or tooling.

#### Articulated Machine Axis Names

The axes of articulated machines represent forward kinematic relationships between mechanical linkages. Each axis is a connection between linkages, also referred to as joints, and **MUST** be named using a `J` followed by a monotonically increasing number; for example, `J1`, `J2`, `J3`.  The numbering starts at the base axis connected or closest to the mounting surface, `J1`, incrementing to the mechanical interface, `Jn`, where `n` is the number of the last axis. The chain forms a parent-child relationship with the parent being the axis closest to the base.

A machine having an axis with more than one child **MUST** number each branch using its numeric designation followed by a branch number and a monotonically increasing number. For example, if `J2` has two children, the first child branch **MUST** be named `J2.1.1` and the second child branch `J2.2.1`. A child of the first branch **MUST** be named `J2.1.2`, incrementing to `J2.1.n`, where `J2.1.n` is the number of the last axis in that branch.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isAxisOf</code></td><td><a href="{% link model/DeviceInformationModel/Device.md %}"><code>Device</code></a></td><td>1.0</td><td></td><td>0..*</td>
<td markdown="block">

  (through `Axes`)

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Linear`]({% link model/DeviceInformationModel/Components/ComponentTypes/Linear.md %}) | 1.0 |  |
| [`Rotary`]({% link model/DeviceInformationModel/Components/ComponentTypes/Rotary.md %}) | 1.0 |  |
| [`Spindle`]({% link model/DeviceInformationModel/Components/ComponentTypes/Spindle.md %}) | 1.0 | 1.1 |

