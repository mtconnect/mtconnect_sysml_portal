---
title: "CodeEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 21
layout: default
---

# CodeEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `APMX` | 1.2 |  |  | maximum engagement of the cutting edge or edges with the workpiece measured perpendicular to the feed motion. |
| 2 | `BCH` | 1.2 |  |  | flat length of a chamfer. |
| 3 | `BDX` | 1.2 |  |  | largest diameter of the body of a tool item. |
| 4 | `BS` | 1.2 |  |  | measure of the length of a wiper edge of a cutting item. |
| 5 | `CHW` | 1.2 |  |  | width of the chamfer. |
| 6 | `CRP` | 1.2 |  |  | theoretical sharp point of the cutting tool from which the major functional dimensions are taken. |
| 7 | `DC` | 1.2 |  |  | maximum diameter of a circle on which the defined point Pk of each of the master inserts is located on a tool item. The normal of the machined peripheral surface points towards the axis of the cutting tool. |
| 8 | `DCx` | 1.2 |  |  | diameter of a circle on which the defined point Pk located on this cutting tool. The normal of the machined peripheral surface points towards the axis of the cutting tool. |
| 9 | `DF` | 1.2 |  |  | dimension between two parallel tangents on the outside edge of a flange. |
| 10 | `DMM` | 1.2 |  |  | dimension of the diameter of a cylindrical portion of a tool item or an adaptive item that can participate in a connection. |
| 11 | `DRVA` | 1.2 |  |  | angle between the driving mechanism locator on a tool item and the main cutting edge. |
| 12 | `H` | 1.2 |  |  | dimension of the height of the shank. |
| 13 | `HF` | 1.2 |  |  | distance from the basal plane of the tool item to the cutting point. |
| 14 | `IC` | 1.2 |  |  | diameter of a circle to which all edges of a equilateral and round regular insert are tangential. |
| 15 | `KAPR` | 1.2 |  |  | angle between the tool cutting edge plane and the tool feed plane measured in a plane parallel the xy-plane. |
| 16 | `L` | 1.2 |  |  | theoretical length of the cutting edge of a cutting item over sharp corners. |
| 17 | `LBX` | 1.2 |  |  | distance measured along the X axis from that point of the item closest to the workpiece, including the cutting item for a tool item but excluding a protruding locking mechanism for an adaptive item, to either the front of the flange on a flanged body or the beginning of the connection interface feature on the machine side for cylindrical or prismatic shanks. |
| 18 | `LF` | 1.2 |  |  | distance from the gauge plane or from the end of the shank to the furthest point on the tool, if a gauge plane does not exist, to the cutting reference point determined by the main function of the tool. The [`CuttingTool`]({% link model/AssetInformationModel/CuttingTool/CuttingTool.md %}) functional length will be the length of the entire tool, not a single cutting item. Each [`CuttingItem`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}) can have an independent [`FunctionalLength`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/FunctionalLength.md %}) represented in its measurements. |
| 19 | `LFx` | 1.2 |  |  | distance from the gauge plane or from the end of the shank of the cutting tool, if a gauge plane does not exist, to the cutting reference point determined by the main function of the tool. This measurement will be with reference to the cutting tool and **MUST NOT** exist without a cutting tool. |
| 20 | `LPR` | 1.2 |  |  | dimension from the yz-plane to the furthest point of the tool item or adaptive item measured in the -X direction. |
| 21 | `LS` | 1.2 |  |  | dimension of the length of the shank. |
| 22 | `LUX` | 1.2 |  |  | maximum length of a cutting tool that can be used in a particular cutting operation including the non-cutting portions of the tool. |
| 23 | `N/A` | 1.2 |  |  | angle of the tool with respect to the workpiece for a given process. The value is application specific. |
| 24 | `OAL` | 1.2 |  |  | largest length dimension of the cutting tool including the master insert where applicable. |
| 25 | `PSIR` | 1.2 |  |  | angle between the tool cutting edge plane and a plane perpendicular to the tool feed plane measured in a plane parallel the xy-plane. |
| 26 | `RE` | 1.2 |  |  | nominal radius of a rounded corner measured in the X Y-plane. |
| 27 | `SDLx` | 1.2 |  |  | length of a portion of a stepped tool that is related to a corresponding cutting diameter measured from the cutting reference point of that cutting diameter to the point on the next cutting edge at which the diameter starts to change. |
| 28 | `SIG` | 1.2 |  |  | angle between the major cutting edge and the same cutting edge rotated by 180 degrees about the tool axis. |
| 29 | `STAx` | 1.2 |  |  | angle between a major edge on a step of a stepped tool and the same cutting edge rotated 180 degrees about its tool axis. |
| 30 | `W1` | 1.2 |  |  | insert width when an inscribed circle diameter is not practical. |
| 31 | `WF` | 1.2 |  |  | distance between the cutting reference point and the rear backing surface of a turning tool or the axis of a boring bar. |
| 32 | `WT` | 1.2 |  |  | total weight of the cutting tool in grams. The force exerted by the mass of the cutting tool. |
