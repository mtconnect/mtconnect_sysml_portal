---
title: SysML / XMI Primer
summary: Background on the SysML modeling language and the XMI serialization that the MTConnect SysML Portal consumes as its only input.
tags: [portal, sysml, research, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# SysML / XMI Primer

The portal's only input is a SysML model exported as XMI from Cameo Systems Modeler. This page captures the minimum context a contributor needs to read the generators or follow architecture discussions.

## SysML

SysML (the Systems Modeling Language, OMG SysML 1.x) is a UML 2 profile for systems engineering. The MTConnect SysML model uses a narrow subset:

- **Packages** organize the model into the same logical structure the published spec uses (`Devices`, `Observations`, `Assets`, `Streams`, `Error`, etc.).
- **Blocks** represent classes (DataItem, Component, Asset, Specification, ...). Properties on blocks become attributes/elements in derived schemas.
- **Enumerations** become enumerated types in XSD and `enum` constraints in JSON Schema.
- **Constraints** (OCL-style) annotate blocks; the validation generator reads them.
- **Stereotypes** (custom and standard) flag normative vs. informative content, version-introduced markers, and informative packages.

## XMI

XMI (XML Metadata Interchange) is the OMG standard for serializing UML/SysML models. Cameo writes XMI 2.5.1 with the Magic Draw vendor extensions. The generator parses the file with Nokogiri and walks the model using `Nokogiri::Slop` for convenience.

Relevant subtree:

```
<uml:Model …>
  <packagedElement xmi:type="uml:Package" …>
    <packagedElement xmi:type="uml:Class" …>
      <ownedAttribute …/>
      <ownedRule …>      ← constraints
    </packagedElement>
    …
  </packagedElement>
</uml:Model>
```

The Cameo extension subtree carries:

- Stereotype applications (used to mark informative packages, version-introduced types, etc.).
- Diagram metadata (referenced by the GH Pages generator to embed diagram PNGs alongside the relevant types).

## Why XMI and not a hand-curated DSL

XMI was the chosen interchange format because:

1. The model is **authored** in Cameo by domain experts on the MTConnect Standard committee. The portal cannot require them to switch tools or maintain a parallel DSL.
2. Cameo's XMI export is deterministic enough that diffing between releases is meaningful in code review.
3. The SysML tooling ecosystem (validators, diagram exporters, transformations) all speak XMI.

The trade-off is that the generators are tightly coupled to Cameo's XMI dialect — particularly the stereotype applications under `xmi:Extension`.

## Related

- [Architecture](../architecture.md) — where the model file sits in the pipeline
- [Generators overview](../../generators/_about.md) — what reads the XMI
