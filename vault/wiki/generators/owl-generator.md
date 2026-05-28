---
title: OWL Generator
summary: Emits the Turtle (.ttl) ontology of the MTConnect model, aligned with the Industrial Ontologies Foundry (IOF) constructs.
tags: [generators, owl, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# OWL Generator

`OwlGenerator` (`Format/src/generate_owl.rb`, implementation under `Format/src/owl/`) emits one Turtle file per Cameo package, plus the IOF-aligned core ontology `MTConnectCore.ttl`.

## Output

```
owl/
  MTConnectCore.ttl              ← templated from Format/src/owl/MTConnectCore.ttl
  ComponentOrganizerTypes.ttl
  ComponentTypes.ttl
  Components.ttl
  Compositions.ttl
  ConditionTypes.ttl
  Configurations.ttl
  CoordinateSystems.ttl
  DataItemTypes.ttl
  DataItems.ttl
  DataTypes.ttl
  DeviceInformationModel.ttl
  Devices.ttl
  EventTypes.ttl
  ImageFiles.ttl
  Motion.ttl
  ObservationInformationModel.ttl
  …                              ← 29 generated package files
  catalog-v001.xml               ← OASIS XML catalog mapping namespace IRIs to files
```

## Namespace conventions

The header of `MTConnectCore.ttl` declares the prefixes the rest of the ontology uses:

```
@prefix owl:       <http://www.w3.org/2002/07/owl#> .
@prefix rdf:       <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs:      <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd:       <http://www.w3.org/2001/XMLSchema#> .
@prefix skos:      <http://www.w3.org/2004/02/skos/core#> .
@prefix iof-cnstr: <https://spec.industrialontologies.org/ontology/construct/> .
@prefix iof-ind:   <https://spec.industrialontologies.org/ontology/individual/> .
@prefix iof-av:    <https://spec.industrialontologies.org/ontology/annotation/> .
@prefix mtc-cnstr: <https://model.mtconnect.org/ontology/construct/> .
@prefix mtc-indv:  <https://model.mtconnect.org/ontology/individual/> .
```

`mtc-cnstr:` carries class and property constructs; `mtc-indv:` carries individuals (instances). The IOF prefixes (`iof-cnstr`, `iof-ind`, `iof-av`) anchor the ontology against the Industrial Ontologies Foundry vocabulary.

## Templating

`MTConnectCore.ttl` is the only generator input that lives as a file rather than as Ruby code. The generator reads `Format/src/owl/MTConnectCore.ttl`, substitutes `$mtconnect_version` against the current version, and writes the result to `owl/MTConnectCore.ttl`. The per-package files are emitted programmatically by walking the model.

## Skip list

```ruby
@skip_models = Set["CSV Imports", "Simulation", "MTConnect",
                   "Development Process", "Imports", "Supporting Documents",
                   "MTConnect Device Validation Suite",
                   "Fundamentals",
                   "Reference Agent Architecture",
                   "WIP: Device Examples", "WIP: Use Cases",
                   "Asset Information Model",
                   "Interface Interaction Model"]
```

The OWL generator skips slightly more than the other generators — `Fundamentals`, `Asset Information Model`, and `Interface Interaction Model` are intentionally omitted because they do not have a stable IOF mapping yet.

## Files

| File | Role |
|---|---|
| `owl_model.rb` | Per-package Turtle writer |
| `owl_type.rb` | Per-type Turtle writer; emits OWL class axioms |
| `helpers.rb` | Turtle helpers (IRI escaping, prefix lookups) |
| `MTConnectCore.ttl` | Manually maintained core ontology template |

## Related

- [Generator overview](./overview.md)
- [2026-04-30 OWL generator integrated](../portal/journal/2026-04-30-owl-generator-integrated.md)
- [SysML / XMI primer](../portal/research/sysml-xmi-primer.md)
