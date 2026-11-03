---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFFeature
---

# Get-PSFFeature

## Synopsis

Returns a list of all registered features.

## Syntax

### __AllParameterSets

```
Get-PSFFeature [[-Name] <string>] [<CommonParameters>]
```

## Description

Returns a list of all registered features.

## Examples

### EXAMPLE 1

```powershell
Get-PSFFeature
```

Returns all features registered.

## Parameters

### Name

The name to filter by.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


