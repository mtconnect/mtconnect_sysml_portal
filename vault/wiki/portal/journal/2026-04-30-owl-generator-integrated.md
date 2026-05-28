---
title: "2026-04-30 OWL Generator Integrated"
summary: The OWL generator was integrated into the default operation set and the IOF-aligned MTConnectCore.ttl was checked in.
tags: [portal, owl, generators, implementation, resolved]
source: manual
created: 2026-04-30
updated: 2026-05-27
---

# 2026-04-30 — OWL Generator Integrated

## What happened

- `OwlGenerator` (`Format/src/generate_owl.rb`, `Format/src/owl/`) integrated as a first-class operation (`4c8a157` "Include the owl generators").
- `MTConnectCore.ttl` source moved into `Format/src/owl/` so it can be templated with `$mtconnect_version`.

## Decisions made

- **Per-package Turtle files.** The generator emits one `.ttl` per Cameo package (29 files), plus the IOF-aligned `MTConnectCore.ttl` as a manually maintained spine that imports them.
- **IOF construct alignment.** Imports `iof-cnstr`, `iof-ind`, and `iof-av` namespaces. Domain individuals live under `mtc-indv:`; constructs under `mtc-cnstr:`.

## What shipped

- `Format/src/generate_owl.rb` and `Format/src/owl/{owl_model.rb, owl_type.rb, helpers.rb, MTConnectCore.ttl}`.
- The `owl/` directory at the repo root holds the generated artifacts.

## Open items

- Confirm import set in `MTConnectCore.ttl` is the right default. Tracked in [in-progress/open-questions.md](../in-progress/open-questions.md).
