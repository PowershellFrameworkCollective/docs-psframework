---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFFeature
---

# Test-PSFFeature

## Synopsis

Tests whether a given feature has been enabled.

## Syntax

### __AllParameterSets

```
Test-PSFFeature [-Name] <string> [[-ModuleName] <string>] [<CommonParameters>]
```

## Description

Tests whether a given feature has been enabled.
Use this within the feature-owning module to determine, whether a feature should be enabled or not.

## Examples

### EXAMPLE 1

```powershell
Test-PSFFeature -Name PSFramework.InheritEnableException -ModuleName SPReplicator
```

Tests whether the module SPReplicator has enabled the Enable Exception Inheritance feature.

## Parameters

### ModuleName

The name of the module that seeks to use the feature.
Must be specified in order to determine module-specific flags.

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

The feature to test for.

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


