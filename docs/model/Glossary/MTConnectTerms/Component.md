---
title: "Component"
parent: "MTConnect Terms Package"
grand_parent: "Glossary Package"
nav_order: 3
layout: default
---

# Component

**Supertype:** `Thing`, `engineered system`

<span class="hoverterm">engineered system<span class="definition" data-term="engineered system">logical or physical entity that may produce *observations* about itself.</span></span>  part of a <span class="hoverterm">Device<span class="definition" data-term="Device">*Component* not belonging to any *Component* that may have *assets*</span></span> composed of zero or more <span class="hoverterm">Components<span class="definition" data-term="Component">*engineered system*  part of a *Device* composed of zero or more *Components*</span></span>

## Relations

<table><thead><tr><th>Name</th><th>Type</th><th>Int</th><th>Dep</th><th>Multiplicty</th><th>Description</th></tr></thead><tbody>
<tr><td><code>has component</code></td><td><a href="{% link model/Glossary/MTConnectTerms/Component.md %}"><code>Component</code></a></td><td></td><td></td><td>0..*</td>
<td markdown="block">

a component relationship that inheres other components. 

</td>
</tr>
<tr><td><code>belongs to</code></td><td><a href="{% link model/Glossary/MTConnectTerms/Component.md %}"><code>Component</code></a></td><td></td><td></td><td>1</td>
<td markdown="block">

the owner of a component. a device may not belong to any other component. 

</td>
</tr>

</tbody></table>

## Subclasses

{: .auto-width }
| Name | Int | Dep |
|---|---|---|
| [`Composition`]({% link model/DeviceInformationModel/Compositions/Composition.md %}) |  |  |
| [`Device`]({% link model/DeviceInformationModel/Device.md %}) |  |  |

