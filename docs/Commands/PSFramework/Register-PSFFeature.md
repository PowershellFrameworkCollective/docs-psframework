---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFFeature
---

# Register-PSFFeature

## Synopsis

Registers a feature for use in the PSFramework Feature Flag System.

## Syntax

### __AllParameterSets

```
Register-PSFFeature [-Name] <string> [[-Description] <string>] [[-Owner] <string>] [-NotGlobal]
 [-NotModuleSpecific] [<CommonParameters>]
```

## Description

Registers a feature for use in the PSFramework Feature Flag System.
This allows offering a common interface for enabling and disabling features on-demand.
Typical use-cases:
- Experimental Features
- Reverting breaking behavior on a per-module basis.

## Examples

### EXAMPLE 1

```powershell
Register-PSFFeature -Name 'MyModule.DividebyZeroExp' -Description 'Attempt to divide by zero' -Owner MyModule
```

Registers the feature under its owning module and adds a nice description.

## Parameters

### Description

A description of the feature, so users can discover what it is about.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the feature to register.
Feature names are scoped globally, so please prefix by your own module's name.

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

### NotGlobal

Disables global flags for this feature.
By default, features can be enabled or disabled on a global scope.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### NotModuleSpecific

Disables module specific feature flags.
By default, individual modules can override the global settings either way.
This may not really be applicable for all features however.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Owner

The name of the module owning the feature.
Autodiscovery is attempted, but it is recommended to explicitly specify the owning module's name.

```yaml
Type: System.String
DefaultValue: (Get-PSCallStack)[1].InvocationInfo.MyCommand.ModuleName
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


