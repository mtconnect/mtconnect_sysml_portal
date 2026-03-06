---
title: "Transform"
parent: "Pipelines Package"
grand_parent: "Reference Agent Architecture Package"
nav_order: 23
layout: default
---

# Transform

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>guard</code></td><td><a href="{% link model/ReferenceAgentArchitecture/Pipelines/Guard.md %}"><code>Guard</code></a></td><td></td><td></td><td>1</td>
<td markdown="block">

 

</td>
</tr>
<tr><td><code>next</code></td><td><a href="{% link model/ReferenceAgentArchitecture/Pipelines/Transform.md %}"><code>Transform</code></a></td><td></td><td></td><td>0..*</td>
<td markdown="block">

 

</td>
</tr>

</tbody></table>

## Operations

### transform
#### Description

None"

#### Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
|  |  |   |

#### Parameters:
<table><thead><tr><th>Name</th><th>Int</th><th>Dep</th><th>Type</th><th>Multiplicity</th><th>Default Value</th><th>Description</th></tr></thead><tbody>
<tr>
<td markdown="block">
entity
</td>
<td markdown="block">

</td>
<td markdown="block">

</td>
<td markdown="block">
[`Entity`]({% link model/ReferenceAgentArchitecture/Pipelines/Entity.md %})
</td>
<td markdown="block">
1
</td>
<td markdown="block">

</td>
<td markdown="block">

</td>
</tr>
</tbody></table>

#### Results:

<table><thead><tr><th>Name</th><th>Type</th><th>Documentation</th></tr></thead><tbody>
<tr>
<td markdown="block">
Result
</td>
<td markdown="block">
[`Entity`]({% link model/ReferenceAgentArchitecture/Pipelines/Entity.md %})
</td>
<td markdown="block">

</td>
</tr>
</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`ConvertSample`]({% link model/ReferenceAgentArchitecture/Pipelines/ConvertSample.md %}) |  |  |

