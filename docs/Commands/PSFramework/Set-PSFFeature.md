---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFFeature
---

# Set-PSFFeature

## Synopsis

Toggles a feature on or off.

## Syntax

### __AllParameterSets

```
Set-PSFFeature [-Name] <string> [-Value] <bool> [[-ModuleName] <string>] [<CommonParameters>]
```

## Description

Toggles a feature on or off.
This controls the flags for optional features a module might offer.

Features can be controlled globally or specific to a module that tries to consume it.
Module specific settings can override global settings, if a feature supports both global and module flags.

## Examples

### EXAMPLE 1

```powershell
Set-PSFFeature -Name 'PSFramework.InheritEnableException' -Value $true -ModuleName SPReplicator
```

This sets the flag for the Enable Exception Inheritance Name to $true, but only applies to the module SPReplicator.

### EXAMPLE 2

```powershell
Set-PSFFeature -Name 'MyModule.Feierabend' -Value $true
```

This enables the global flag for the MyModule.Feierabend feature.

## Parameters

### ModuleName

The module it should apply to.
Specifying this parameter sets the flag only for the module specified.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the feature to set.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Value

The value to set it to.

```yaml
Type: System.Boolean
DefaultValue: False
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


