---
title: "UnitEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 118
layout: default
---

# UnitEnum

**Stereotypes:** `<<extensible>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.0 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `AMPERE` | 1.0 |  | 2.5 | electric current in ampere. |
| 2 | `CELSIUS` | 1.0 |  | 2.5 | temperature in degree Celsius. |
| 3 | `COULOMB` | 2.1 |  | 2.5 | electric charge in coulomb. |
| 4 | `COUNT` | 1.0 |  |  | count of something. |
| 5 | `COUNT/SECOND` | 1.7 |  | 2.5 | frequency in count per second. |
| 6 | `CUBIC_METER` | 2.4 |  | 2.5 | geometric volume in meter. |
| 7 | `CUBIC_MILLIMETER` | 1.5 |  | 2.5 | geometric volume in millimeter. |
| 8 | `CUBIC_MILLIMETER/SECOND` | 1.5 |  |  | change of geometric volume per second. |
| 9 | `CUBIC_MILLIMETER/SECOND\^2` | 1.5 |  |  | change in geometric volume per second squared. |
| 10 | `DECIBEL` | 1.2 |  | 2.5 | sound level in decibel. |
| 11 | `DEGREE` | 1.0 |  | 2.5 | angle in degree. |
| 12 | `DEGREE/SECOND` | 1.0 |  | 2.5 | angular velocity in degree per second. |
| 13 | `DEGREE/SECOND\^2` | 1.0 |  |  | angular acceleration in degree per second squared. |
| 14 | `DEGREE_3D` | 1.6 |  |  | space-delimited, floating-point representation of the angular rotation in degrees around the X, Y, and Z axes relative to a cartesian coordinate system respectively in order as A, B, and C. If any of the rotations is not known, it **MUST** be zero (0). |
| 15 | `GRAM` | 1.2 |  | 2.5 | mass in gram. |
| 16 | `GRAM/CUBIC_METER` | 1.6 |  | 2.5 | density in gram per cubic meter. |
| 17 | `HERTZ` | 1.0 |  | 2.5 | frequency in cycles per second. |
| 18 | `JOULE` | 1.1 |  |  | energy in joule. |
| 19 | `KILOGRAM` | 1.0 |  | 2.5 | mass in kilogram. |
| 20 | `LITER` | 1.0 |  | 2.5 | volume in liter. |
| 21 | `LITER/SECOND` | 1.2 |  | 2.5 | volumetric flow in liter per second. |
| 22 | `METER/SECOND\^2` | 2.1 |  | 2.5 | acceleration in meter per second squared. |
| 23 | `MICRO_RADIAN` | 1.2 |  | 2.5 | tilt in micro radian. |
| 24 | `MILLIGRAM` | 1.5 |  | 2.5 | mass in milligram. |
| 25 | `MILLIGRAM/CUBIC_MILLIMETER` | 1.5 |  | 2.5 | density in milligram per cubic millimeter. |
| 26 | `MILLIGRAM/LITER` | 2.7 |  |  | concentration of a dissolved substance in milligram per liter |
| 27 | `MILLILITER` | 1.5 |  | 2.5 | volume in milliliter. |
| 28 | `MILLIMETER` | 1.0 |  | 2.5 | length in millimeter. |
| 29 | `MILLIMETER/REVOLUTION` | 1.5 |  | 2.5 | feedrate per revolution in millimeter per revolution. |
| 30 | `MILLIMETER/SECOND` | 1.0 |  | 2.5 | speed in millimeter per second. |
| 31 | `MILLIMETER/SECOND\^2` | 1.0 |  | 2.5 | acceleration in millimeter per second squared. |
| 32 | `MILLIMETER_3D` | 1.1 |  |  | point in space identified by X, Y, and Z positions and represented by a space-delimited set of numbers each expressed in millimeters. |
| 33 | `NEWTON` | 1.0 |  | 2.5 | force in newton. |
| 34 | `NEWTON_METER` | 1.0 |  | 2.5 | torque in newton-meter. |
| 35 | `OHM` | 1.2 |  |  | electrical resistance in ohm. |
| 36 | `OHM_METER` | 2.5 |  |  | resistivity in ohm-meter. |
| 37 | `PASCAL` | 1.0 |  |  | pressure or stress in pascal. |
| 38 | `PASCAL/SECOND` | 1.7 |  | 2.5 | pressurization rate in pascal per second. |
| 39 | `PASCAL_SECOND` | 1.2 |  | 2.5 | viscosity in pascal-second. |
| 40 | `PERCENT` | 1.0 |  | 2.5 | amount in or for every hundred. |
| 41 | `PH` | 1.1 |  | 2.5 | acidity or alkalinity of a solution in pH. |
| 42 | `REVOLUTION/MINUTE` | 1.0 |  | 2.5 | rotational velocity in revolution per minute. |
| 43 | `REVOLUTION/SECOND` | 1.1 |  |  | rotational velocity in revolution per second. |
| 44 | `REVOLUTION/SECOND\^2` | 1.6 |  | 2.5 | rotational acceleration in revolution per second squared. |
| 45 | `SECOND` | 1.0 |  | 2.5 | time in second. |
| 46 | `SIEMENS/METER` | 1.2 |  | 2.5 | electrical conductivity in siemens per meter. |
| 47 | `SQUARE_MILLIMETER` | 2.4 |  | 2.5 | geometric area in millimeter. |
| 48 | `UNIT_VECTOR_3D` | 1.7 |  |  | 3D Unit Vector. Space delimited list of three floating point numbers. |
| 49 | `VOLT` | 1.0 |  | 2.5 | electric potential, electric potential difference or electromotive force in volt. |
| 50 | `VOLT_AMPERE` | 1.2 |  | 2.5 | apparent power in an electrical circuit, equal to the product of root-mean-square (RMS) voltage and RMS current (commonly referred to as VA) in volt-ampere. |
| 51 | `VOLT_AMPERE_REACTIVE` | 1.2 |  | 2.5 | reactive power in an AC electrical circuit (commonly referred to as VAR) in volt-ampere-reactive. |
| 52 | `WATT` | 1.0 |  | 2.5 | power in watt. |
| 53 | `WATT_SECOND` | 1.2 |  | 2.5 | electrical energy in watt-second |

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`NativeUnitEnum`]({% link model/Profile/DataTypes/NativeUnitEnum.md %}) | 1.1 |  |

