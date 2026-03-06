---
title: "Transformation"
parent: "CoordinateSystems Package"
grand_parent: "Configurations Package"
nav_order: 11
layout: default
---

# Transformation
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.6 |  |   |

process of transforming to the origin position of the coordinate system from a parent coordinate system using [`Translation`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Translation.md %}) and [`Rotation`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Rotation.md %}).

### Description

At a minimum, a [`Translation`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Translation.md %}) or a [`Rotation`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Rotation.md %}) **MUST** be defined for a [`Transformation`]({% link model/DeviceInformationModel/Configurations/CoordinateSystems/Transformation.md %}).

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasTranslation</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/AbstractTranslation.md %}"><code>AbstractTranslation</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasRotation</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/AbstractRotation.md %}"><code>AbstractRotation</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isTransformationOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/CoordinateSystems/CoordinateSystem.md %}"><code>CoordinateSystem</code></a></td><td>1.6</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isTransformationOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/Motion/Motion.md %}"><code>Motion</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>isTransformationOf</code></td><td><a href="{% link model/DeviceInformationModel/Configurations/SolidModel/SolidModel.md %}"><code>SolidModel</code></a></td><td>1.7</td><td></td><td>0..1</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

Either `Translation` or `Rotation` **MUST** be defined.

</td><td markdown="block">

```
val:TransformationMustHaveRotationOrTranslation
    a sh:NodeShape ;
    sh:message "`Transformation` MUST have at least one of `Rotation` or `Translation` defined, and neither can be multiply defined." ;
    sh:targetClass mt:Transformation ;

    sh:property [
        sh:path mt:hasRotation ;
        sh:maxCount 1 ;
        sh:class mt:Rotation ;
    ] ;
    sh:property [
        sh:path mt:hasTranslation ;
        sh:maxCount 1 ;
        sh:class mt:Translation ;
    ] ;

    sh:or (
        [ sh:property [
            sh:path mt:hasRotation ;
            sh:minCount 1 ;
        ] ]
        [ sh:property [
            sh:path mt:hasTranslation ;
            sh:minCount 1 ;
        ] ]
    ) .
```

</td></tr>

</tbody></table>
