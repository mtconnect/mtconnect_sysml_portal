---
title: "PartOccurrence"
parent: "Component Types Package"
grand_parent: "Components Package"
nav_order: 58
layout: default
---

# PartOccurrence

**Supertype:** `Part`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

[`Part`]({% link model/DeviceInformationModel/Components/ComponentTypes/Part.md %}) that exists at a specific place and time, such as a specific instance of a bracket at a specific timestamp.

### Description

[`PartId`]({% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartId.md %}) **MUST** be defined for [`PartOccurrence`]({% link model/DeviceInformationModel/Components/ComponentTypes/PartOccurrence.md %}).

### Example


~~~~xml
<Parts id="partOccSet">
   <Components>
	   <PartOccurrence id="partOccur">
		 <DataItems>
		   <DataItem id="partSet" category="EVENT" representation="TABLE" type ="COMPONENT_DATA">
			  <Definition>
				 <EntryDefinitions>
					  <EntryDefinition keyType="PART_UNIQUE_ID"/>
				 </EntryDefinitions>
				 <CellDefinitions>
					<CellDefinition key="partNumber" type="PART_KIND_ID" subType="PART_NUMBER"/>
					<CellDefinition key="batchId" type="PART_GROUP_ID" subType="BATCH"/>
					<CellDefinition key="quantity" type="PART_COUNT" subType="TARGET"/>
					<CellDefinition key="actualCompleteTime" type="PROCESS_TIME" subType="COMPLETE"/>
					<CellDefinition key="partState" type="PROCESS_STATE"/>
				</CellDefinitions>
			  </Definition>
			</DataItem>
		 </DataItems>
	   </PartOccurrence>
	</Components>
</Parts>
~~~~
{: caption="XML Device Model Example for PartOccurrence and ComponentData"}


~~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="/styles/Streams.xsl"?>
<MTConnectStreams>
  <Streams>
    <DeviceStream name="VMC-3Axis" uuid="test_27MAY">
      <ComponentStream component="PartOccurrence" name="partSet" componentId="partOccur">
        <Events>
          <ComponentDataTable dataItemId="partSet" timestamp="2020-10-28T19:45:43.070010Z" sequence="95" count="2">
            <Entry key="part1">
              <Cell key="actualStartTime">2009-06-15T00:00:00.000000</Cell>
              <Cell key="partId">part1</Cell>
              <Cell key="partName">SomeName</Cell>
              <Cell key="uniqueID">abc-123</Cell>
            </Entry>
            <Entry key="part2">
              <Cell key="actualStartTime">2009-06-15T00:00:00.007925</Cell>
              <Cell key="partId">part2</Cell>
              <Cell key="partName">AnotherName</Cell>
              <Cell key="uniqueID">def-123</Cell>
            </Entry>
          </ComponentDataTable>
        </Events>
      </ComponentStream>
    </DeviceStream>
  </Streams>
</MTConnectStreams>
~~~~
{: caption="XML Streams Response Example for PartOccurrence and ComponentData"}

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>observesPartId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartId.md %}"><code>PartId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPartUniqueId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartUniqueId.md %}"><code>PartUniqueId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPartGroupId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartGroupId.md %}"><code>PartGroupId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPartKindId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartKindId.md %}"><code>PartKindId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPartCount</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartCount.md %}"><code>PartCount</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesPartStatus</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/PartStatus.md %}"><code>PartStatus</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesProcessOccurrenceId</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessOccurrenceId.md %}"><code>ProcessOccurrenceId</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesProcessTime</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/ProcessTime.md %}"><code>ProcessTime</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>observesUser</code></td><td><a href="{% link model/ObservationInformationModel/ObservationTypes/EventTypes/User.md %}"><code>User</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`FeatureOccurrence`]({% link model/DeviceInformationModel/Components/ComponentTypes/FeatureOccurrence.md %}) | 2.2 |  |

