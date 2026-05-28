---
title: Validation Generator
summary: Emits the device validation suite used by the MTConnect Device Validation Suite to verify agent responses against the SysML model's constraints.
tags: [generators, validation, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Validation Generator

`ValidationGenerator` (`Format/src/generate_validation.rb`, with `validations.rb` under `Format/src/validation/`) emits the device validation suite. The output goes to `Format/src/validation/portal/`.

## Inputs

The generator reads constraints carried in the SysML model — OCL-style `ownedRule` elements on classes — and rewrites them into the form expected by the device validation suite.

## Output

`Format/src/validation/portal/` holds the generated validation cases. They are consumed by the MTConnect Device Validation Suite, which is an external tool that issues queries against an agent and asserts the responses against the generated cases.

## When the validation generator runs

Unlike `ghpages`, the validation generator is **not** part of the default CI build. It is invoked explicitly:

```sh
ruby Format/src/generate.rb -v 2.7 validation
```

The generated output is checked in so consumers do not have to run the generator themselves.

## Related

- [Generator overview](./overview.md)
- [MTConnect Standard scope](../portal/research/mtconnect-standard-scope.md)
