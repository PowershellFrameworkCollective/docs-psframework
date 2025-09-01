---
sidebar_position: 1
---

# Parameter Attributes

## Synopsis

In PowerShell, parameter binding can be customized by adding special attributes.
Whether that is to validate input, offer tab completion or even fully convert what data the user offered.

PSFramework brings quite a few of them to help write user-friendly code for less effort.

## Validation

Validation Attributes allow you to custom tailor validation as part of the parameter-binding, regardless of the expected parameter type.

All `PSFramework`-provided validation attributes support custom error messages, to optimize the user experience.

+ Validating using regex patterns: [PsfValidatePattern](Validation/psfvalidatepattern.md)
+ Validating using scriptblocks: [PsfValidateScript](Validation/psfvalidatescript.md)
+ Validating using dynamic validate sets: [PsfValidateSet](Validation/psfvalidateset.md)
+ Validating input data integrity: [PsfValidateTrustedData](Validation/psfvalidatetrusteddata.md)

## Transformation

+ Convert input using your custom logic: [ScriptTransformation](Transformation/ScriptTransformation.md)
