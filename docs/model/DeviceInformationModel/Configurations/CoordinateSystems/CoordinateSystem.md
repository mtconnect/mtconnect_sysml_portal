---
title: "CoordinateSystem"
parent: "CoordinateSystems Package"
grand_parent: "Configurations Package"
nav_order: 4
layout: default
---

# CoordinateSystem
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

reference system that associates a unique set of n parameters with each point in an n-dimensional space. <em>ISO 10303-218:2004</em>

### Description

At most only one of [`Origin`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Origin.md %}) or [`Transformation`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Transformation.md %}) **MUST** be defined for a [`CoordinateSystem`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/CoordinateSystem.md %}).

## Properties

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>id</code></td><td><code>ID</code></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

unique identifier for the coordinate system. 

</td>
</tr>
<tr><td><code>name</code></td><td><code>string</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

name of the coordinate system. 

</td>
</tr>
<tr><td><code>nativeName</code></td><td><code>string</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

manufacturer's name or users name for the coordinate system. 

</td>
</tr>
<tr><td><code>parentIdRef</code></td><td><code>ID</code></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

pointer to the [`CoordinateSystem`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/CoordinateSystem.md %})::`id`. 

</td>
</tr>
<tr><td><code>type</code></td><td><a href="{% link model/Profile/DataTypes/CoordinateSystemTypeEnum.md %}"><code>CoordinateSystemTypeEnum</code></a></td><td>1.6</td><td></td><td>1</td>
<td markdown="block">

type of coordinate system. The `type` **MUST** be specified

</td>
</tr>
<tr><td><code>uuid</code></td><td><code>UUID</code></td><td>2.2</td><td></td><td>0..1</td>
<td markdown="block">

*UUID* for the coordinate system. 

</td>
</tr>
<tr><td><code>Description</code></td><td><code>string</code></td><td>1.8</td><td></td><td>0..1</td>
<td markdown="block">

natural language description of the [`CoordinateSystem`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/CoordinateSystem.md %}). 

</td>
</tr>
</tbody></table>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasOrigin</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/AbstractOrigin.md %}"><code>AbstractOrigin</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasTransformation</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/Transformation.md %}"><code>Transformation</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isCoordinateSystemOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Configuration.md %}"><code>Configuration</code></a></td><td>1.6</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

Either `Origin` or `Transformation` **MUST** be defined.

</td><td markdown="block">

```
val:CoordinateSystemOriginOrTransformationExclusiveOptional
    a sh:NodeShape ;
    sh:message "`CoordinateSystem` may have either an `Origin` or a `Transformation` but not both." ;
    sh:targetClass mt:CoordinateSystem ;

    sh:property [
        sh:path mt:hasOrigin ;
        sh:maxCount 1 ;
        sh:class mt:Origin ;
    ] ;

    sh:property [
        sh:path mt:hasTransformation ;
        sh:maxCount 1 ;
        sh:class mt:Transformation ;
    ] ;
    sh:sparql [
        a sh:SPARQLConstraint ;
        sh:select """
            SELECT $this
            WHERE {
                OPTIONAL { $this mt:hasOrigin ?origin . }
                OPTIONAL { $this mt:hasTransformation ?trans . }
                FILTER (BOUND(?origin) && BOUND(?trans))
            }
        """ ;
    ] .
```

</td></tr>

</tbody></table>
