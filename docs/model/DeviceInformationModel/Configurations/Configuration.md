---
title: "Configuration"
parent: "Configurations Package"
grand_parent: "Device Information Model Package"
nav_order: 9
layout: default
---

# Configuration
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

technical information about an entity describing its physical layout, functional characteristics, and relationships with other entities.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasSolidModel</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}"><code>SolidModel</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasSensorConfiguration</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Sensor/SensorConfiguration.md %}"><code>SensorConfiguration</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasMotion</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Motion/Motion.md %}"><code>Motion</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasRelationship</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Relationships/ConfigurationRelationship.md %}"><code>ConfigurationRelationship</code></a></td><td>1.5</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasCoordinateSystem</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/CoordinateSystem.md %}"><code>CoordinateSystem</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasSpecification</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Specifications/Specification.md %}"><code>Specification</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasImageFile</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/ImageFiles/ImageFile.md %}"><code>ImageFile</code></a></td><td>2.2</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasPowerSource</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/PowerSources/PowerSource.md %}"><code>PowerSource</code></a></td><td>2.3</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isConfigurationOf</code></td><td><a href="{% link model/AssetInformationModel/Asset.md %}"><code>Asset</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isConfigurationOf</code></td><td><a href="{% link model/DeviceInformationModel/Components/Component.md %}"><code>Component</code></a></td><td>1.2</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isConfigurationOf</code></td><td><a href="{% link model/DeviceInformationModel/Compositions/Composition.md %}"><code>Composition</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>
