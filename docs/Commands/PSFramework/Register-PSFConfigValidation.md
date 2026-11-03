---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFConfigValidation
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFConfigValidation
---

# Register-PSFConfigValidation

## Synopsis

Registers a validation scriptblock for use with the configuration system.

## Syntax

### __AllParameterSets

```
Register-PSFConfigValidation [-Name] <string> [-ScriptBlock] <scriptblock> [<CommonParameters>]
```

## Description

Registers a validation scriptblock for use with the configuration system.

The scriptblock must be designed according to a few guidelines:
- It must not throw exceptions
- It must accept a single parameter (the value to be tested)
- It must return an object with two properties: 'Message', 'Value' and 'Success'.
The Success property should be boolean and indicate whether the value is valid.
The Value property contains the validated input.
The scriptblock may legally convert the input (For example from string to int in case of integer validation)
The message contains a string that will be passed along to an exception in case the input is NOT valid.

## Examples

### EXAMPLE 1

```powershell
Register-PSFConfigValidation -Name IntPositive -ScriptBlock $scriptblock
```

Registers the scriptblock stored in $scriptblock as validation with the name IntPositive

## Parameters

### Name

The name under which to register the validation scriptblock

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ScriptBlock

The scriptblock to register

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


