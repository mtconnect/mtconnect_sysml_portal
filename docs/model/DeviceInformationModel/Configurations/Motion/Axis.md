---
title: "Axis"
parent: "Motion Package"
grand_parent: "Configurations Package"
nav_order: 2
layout: default
---

# Axis

**Supertype:** `AbstractAxis`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |  2.7 (Previous: [2.6](https://model.mtconnect.org/versions/2.6/axis)) |

axis along or around which the [`Component`]({% link model/DeviceInformationModel/Components/Component.md %}) moves relative to a coordinate system.

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

The value **MUST** be a unit vector.

</td><td markdown="block">

```
val:AxisValueMustBeUnitVector
    a sh:NodeShape ;
    sh:message "Axis value must be a unit vector." ;
    sh:targetClass mt:Axis ;
    sh:sparql [
        a sh:SPARQLConstraint ;
        sh:message "'value' property must form a unit vector: sqrt(x^2 + y^2 + z^2) = 1." ;
        sh:select """
            SELECT $this
            WHERE {
                $this mt:value ?vec .
                ?vec mt:x ?x ; mt:y ?y ; mt:z ?z .
                FILTER ( ABS( SQRT((?x*?x) + (?y*?y) + (?z*?z)) - 1.0 ) > 1e-6 )
            }
        """ ;
    ] .

```

</td></tr>

</tbody></table>
