---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFTempItem
---

# Get-PSFTempItem

## Synopsis

List existing temporary items.

## Syntax

### __AllParameterSets

```
Get-PSFTempItem [[-Name] <string>] [[-ModuleName] <string>] [<CommonParameters>]
```

## Description

List existing temporary items.

## Examples

### EXAMPLE 1

```powershell
Get-PSFTempItem
```

List all existing temporary items.

## Parameters

### ModuleName

Name of the module to filter by.
Defaults to '*'

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the item to filter by.
Defaults to '*'

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


