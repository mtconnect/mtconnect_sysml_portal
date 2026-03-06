---
title: "ToolingMeasurement"
parent: "Cutting Tool Life Cycle Package"
grand_parent: "Cutting Tool Package"
nav_order: 15
layout: default
---

# ToolingMeasurement

**Supertype:** `Measurement`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |  2.5 (Previous: [2.4](https://model.mtconnect.org/versions/2.4/toolingmeasurement)) |

constrained scalar value associated with a cutting tool.

### Description

A [`Measurement`]({% link model/AssetInformationModel/Pallet/Measurements/Measurement.md %}) is specific to the tool management policy at a particular shop. The tool zero reference point or gauge line will be different depending on the particular implementation and will be assumed to be consistent within the shop. MTConnect Standard does not standardize the manufacturing process or the definition of the zero point.

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>code</code></td><td><a href="{% link model/Profile/DataTypes/CodeEnum.md %}"><code>CodeEnum</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

shop specific code for the measurement. 

ISO 13399 codes **MAY** be used for these codes as well. 

See `Cutting Tool Measurement Subtypes` and `Cutting Item Measurement Subtypes` for details on [`Measurement`]({% link model/AssetInformationModel/Pallet/Measurements/Measurement.md %}) types and their respective [`Measurement`]({% link model/AssetInformationModel/Pallet/Measurements/Measurement.md %})::`code` values. 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isMeasurementOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItem.md %}"><code>CuttingItem</code></a></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

A collection of measurements relating to this cutting item. 

</td>
</tr>
<tr><td><code>isMeasurementOf</code></td><td><a href="{% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/CuttingToolLifeCycle.md %}"><code>CuttingToolLifeCycle</code></a></td><td>1.2</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`BodyDiameterMax`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/BodyDiameterMax.md %}) | 1.2 |  |
| [`BodyLengthMax`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/BodyLengthMax.md %}) | 1.2 |  |
| [`ChamferFlatLength`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/ChamferFlatLength.md %}) | 1.2 |  |
| [`ChamferWidth`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/ChamferWidth.md %}) | 1.2 |  |
| [`CornerRadius`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/CornerRadius.md %}) | 1.2 |  |
| [`CuttingDiameter`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/CuttingDiameter.md %}) | 1.2 |  |
| [`CuttingDiameterMax`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/CuttingDiameterMax.md %}) | 1.2 |  |
| [`CuttingEdgeLength`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/CuttingEdgeLength.md %}) | 1.2 |  |
| [`CuttingHeight`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/CuttingHeight.md %}) | 1.2 |  |
| [`CuttingReferencePoint`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/CuttingReferencePoint.md %}) | 1.2 |  |
| [`DepthOfCutMax`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/DepthOfCutMax.md %}) | 1.2 |  |
| [`DriveAngle`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/DriveAngle.md %}) | 1.2 |  |
| [`FlangeDiameter`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/FlangeDiameter.md %}) | 1.2 |  |
| [`FlangeDiameterMax`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/FlangeDiameterMax.md %}) | 1.2 |  |
| [`FunctionalLength`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/FunctionalLength.md %}) | 1.2 |  |
| [`FunctionalLength`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/FunctionalLength.md %}) | 1.2 |  |
| [`FunctionalWidth`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/FunctionalWidth.md %}) | 1.2 |  |
| [`IncribedCircleDiameter`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/IncribedCircleDiameter.md %}) | 1.2 |  |
| [`InsertWidth`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/InsertWidth.md %}) | 1.2 |  |
| [`OverallToolLength`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/OverallToolLength.md %}) | 1.2 |  |
| [`PointAngle`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/PointAngle.md %}) | 1.2 |  |
| [`ProtrudingLength`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/ProtrudingLength.md %}) | 1.2 |  |
| [`ShankDiameter`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/ShankDiameter.md %}) | 1.2 |  |
| [`ShankHeight`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/ShankHeight.md %}) | 1.2 |  |
| [`ShankLength`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/ShankLength.md %}) | 1.2 |  |
| [`StepDiameterLength`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/StepDiameterLength.md %}) | 1.2 |  |
| [`StepIncludedAngle`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/StepIncludedAngle.md %}) | 1.2 |  |
| [`ToolCuttingEdgeAngle`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/ToolCuttingEdgeAngle.md %}) | 1.2 |  |
| [`ToolLeadAngle`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/ToolLeadAngle.md %}) | 1.2 |  |
| [`ToolOrientation`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/ToolOrientation.md %}) | 1.2 |  |
| [`UsableLengthMax`]({% link model/AssetInformationModel/CuttingTool/CuttingToolMeasurementSubtypes/UsableLengthMax.md %}) | 1.2 |  |
| [`Weight`]({% link model/AssetInformationModel/Pallet/Measurements/Weight.md %}) | 1.2 |  |
| [`Weight`]({% link model/AssetInformationModel/Pallet/Measurements/Weight.md %}) | 1.2 |  |
| [`WiperEdgeLength`]({% link model/AssetInformationModel/CuttingTool/CuttingItem/CuttingItemMeasurementSubtypes/WiperEdgeLength.md %}) | 1.2 |  |

