---
title: "Measurement"
parent: "Measurements Package"
grand_parent: "Pallet Package"
nav_order: 8
layout: default
---

# Measurement
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |  2.7 (Previous: [2.6](https://model.mtconnect.org/versions/2.6/measurement)) |

constrained scalar value associated with an [`Asset`]({% link model/AssetInformationModel/Asset.md %})

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>maximum</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

maximum value for the measurement.  

</td>
</tr>
<tr><td><code>minimum</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

minimum value for the measurement.  

</td>
</tr>
<tr><td><code>nativeUnits</code></td><td><a href="{% link model/Profile/DataTypes/NativeUnitEnum.md %}"><code>NativeUnitEnum</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

units the measurement was originally recorded in. See `Device Information Model` for the complete list of [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`nativeUnits`. 

</td>
</tr>
<tr><td><code>nominal</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

as advertised value for the measurement. 

</td>
</tr>
<tr><td><code>significantDigits</code></td><td><code>integer</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

number of significant digits in the reported value.  

</td>
</tr>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

units for the measurements. See `Device Information Model` for the complete list of [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`units`. 

</td>
</tr>
<tr><td><code>value</code></td><td><code>float</code></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>isMeasurementOf</code></td><td><a href="{% link model/AssetInformationModel/PhysicalAsset.md %}"><code>PhysicalAsset</code></a></td><td>2.5</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Height`]({% link model/AssetInformationModel/Pallet/Measurements/Height.md %}) | 2.5 |  |
| [`Length`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/Length.md %}) | 2.5 |  |
| [`LoadedHeight`]({% link model/AssetInformationModel/Pallet/Measurements/LoadedHeight.md %}) | 2.5 |  |
| [`LoadedLength`]({% link model/AssetInformationModel/Pallet/Measurements/LoadedLength.md %}) | 2.5 |  |
| [`LoadedSwing`]({% link model/AssetInformationModel/Pallet/Measurements/LoadedSwing.md %}) | 2.5 |  |
| [`LoadedWeight`]({% link model/AssetInformationModel/Pallet/Measurements/LoadedWeight.md %}) | 2.5 |  |
| [`LoadedWidth`]({% link model/AssetInformationModel/Pallet/Measurements/LoadedWidth.md %}) | 2.5 |  |
| [`Swing`]({% link model/AssetInformationModel/Pallet/Measurements/Swing.md %}) | 2.5 |  |
| [`ToolingMeasurement`]({% link model/AssetInformationModel/CuttingTool/CuttingToolLifeCycle/ToolingMeasurement.md %}) | 1.2 |  |
| [`Weight`]({% link model/AssetInformationModel/Pallet/Measurements/Weight.md %}) | 2.5 |  |
| [`Width`]({% link model/AssetInformationModel/Pallet/Measurements/Width.md %}) | 2.5 |  |

