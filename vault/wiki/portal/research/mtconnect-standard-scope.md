---
title: MTConnect Standard Scope
summary: What the MTConnect SysML Portal documents (the normative model) and what it does not (agent implementations, hardware bindings, transport).
tags: [portal, research, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# MTConnect Standard Scope

The portal documents the **MTConnect Standard's information model and serialization formats**. It does not document agents, adapters, transports, or hardware bindings.

## In scope

- The SysML model of MTConnect entities (Device, Component, DataItem, Asset, Observation, Specification, Stream, etc.).
- The XML response document schemas (XSD 1.0 and 1.1) for `MTConnectDevices`, `MTConnectStreams`, `MTConnectAssets`, and `MTConnectError`.
- The JSON wire-format schemas (Draft-04 and Draft 2020-12) for the same response documents.
- The OWL/Turtle ontology aligned with IOF constructs.
- Diagrams, examples, and constraints that the SysML model carries.
- The validation suite used by the MTConnect Device Validation Suite.

## Out of scope

- **Agent implementations** — the C++ MTConnect Agent, adapter SDKs, and any reference implementations live in their own repositories. The portal documents the information model they emit, not the agents themselves.
- **Adapter protocols** — the SHDR adapter protocol, MQTT bindings, and other transport-layer concerns are documented in the MTConnect Reference Architecture and on the C++ Agent project, not here.
- **Hardware integrations** — Cameo packages labelled `WIP: Device Examples` and `WIP: Use Cases` are intentionally skipped by all generators (see [`OwlGenerator#@skip_models`](../../generators/owl-generator.md) and the parallel list in [`GhPagesGenerator`](../../generators/gh-pages-generator.md)).

## Why the split

The portal is the canonical reference for the **information model**. Agents and adapters change quickly and have their own release cadence; binding the portal to them would force the SysML model to absorb implementation churn. Keeping the portal narrow lets the model evolve with the Standard, while implementations track it.
