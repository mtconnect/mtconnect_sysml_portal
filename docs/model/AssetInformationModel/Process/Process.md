---
title: "Process"
parent: "Process Package"
grand_parent: "Asset Information Model Package"
nav_order: 5
layout: default
---

# Process

**Supertype:** `Asset`
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 2.7 |  |   |

[`Asset`]({% link model/AssetInformationModel/Asset.md %}) that is composed of a series of actions to achieve a specific outcome.

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>hasRouting</code></td><td><a href="{% link model/AssetInformationModel/Process/Routing.md %}"><code>Routing</code></a></td><td>2.7</td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>hasTargets</code></td><td><a href="{% link model/AssetInformationModel/Process/Target/Target.md %}"><code>Target</code></a></td><td>2.7</td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

Process Routing ProcessStep 

</td><td markdown="block">

```
val:ProcessRoutingProcessStepMustHaveAtMostOneTarget
    a sh:NodeShape ;
    sh:message "`ProcessStep` in `Routing` for `Process` **MUST** have at most one `TargetRef`." ;
    sh:targetClass mt:ProcessStep ;
    sh:sparql [
        a sh:SPARQLConstraint ;
        sh:select """
            SELECT ?this WHERE {
                ?process a mt:Process .
                ?process mt:hasRouting ?routing .
                ?routing mt:hasProcessStep ?this .
                {
                  SELECT ?this (COUNT(?target) AS ?targetCount) WHERE {
                    ?this mt:hasTarget ?target .
                  }
                  GROUP BY ?this
                  HAVING (?targetCount > 1)
                }
            }
        """ ;
    ] .

```

</td></tr>

</tbody></table>
