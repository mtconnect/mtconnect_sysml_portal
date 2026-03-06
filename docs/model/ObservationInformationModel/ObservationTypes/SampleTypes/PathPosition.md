---
title: "PathPosition"
parent: "Sample Types Package"
grand_parent: "Observation Types Package"
nav_order: 147
layout: default
---

# PathPosition

**Supertype:** `Sample`

**Stereotypes:** `<<ImplementationFormat>>`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.1 |  |  2.3 (Previous: [2.2](https://model.mtconnect.org/versions/2.2/pathposition)) |

position of a control point associated with a [`Controller`]({% link model/DeviceInformationModel/Components/ComponentTypes/Controller.md %}) or a [`Path`]({% link model/DeviceInformationModel/Components/ComponentTypes/Path.md %}).


### Example

~~~~xml
<DataItem type='PATH_POSITION' id='pathposit1' units="MILLIMETER_3D"/>
~~~~
{: caption="XML Device Model Example for `PathPosition` using `MILLIMETER_3D` unit"}

~~~~xml
<PathPosition>10.0 0.0 20.0</PathPosition>
~~~~
{: caption="XML Streams Response Example for `PathPosition` using `MILLIMETER_3D` unit"}


~~~~xml
<DataItem type='PATH_POSITION' id='pathposit1' representation="DATA_SET">
  <Definition>
    <EntryDefinition key='X' units='MILLIMETER'>
    <EntryDefinition key='Y' units='MILLIMETER'>
    <EntryDefinition key='Z' units='MILLIMETER'>
  </Definition>
</DataItem>
~~~~
{: caption="XML Device Model Example for `PathPosition` to demonstrate multi-dimensional representation using `DataSet` representation"}

~~~~xml
<PathPositionDataSet id='pathposit1'>
  <Entry key='X'>10.0</Entry>
  <Entry key='Z'>20.0</Entry>
</PathPositionDataSet>
~~~~
{: caption="XML Streams Response Example for `PathPosition` to demonstrate multi-dimensional representation using `DataSet` representation"}

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>units</code></td><td><a href="{% link model/Profile/DataTypes/UnitEnum.md %}"><code>UnitEnum</code></a></td><td>1.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/SampleEnum.md %}"><code>SampleEnum</code></a></td><td>1.1</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>result</code></td><td><code>float3d</code></td><td>1.1</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`PathPosition.Actual`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathPositionActual.md %}) | 1.1 |  |
| [`PathPosition.Commanded`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathPositionCommanded.md %}) | 1.1 |  |
| [`PathPosition.Probe`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathPositionProbe.md %}) | 1.1 |  |
| [`PathPosition.Target`]({% link model/ObservationInformationModel/ObservationTypes/SampleTypes/PathPositionTarget.md %}) | 1.1 |  |

