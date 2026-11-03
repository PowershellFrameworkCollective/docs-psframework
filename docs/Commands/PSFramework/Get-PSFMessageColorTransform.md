---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFMessageColorTransform
---

# Get-PSFMessageColorTransform

## Synopsis

Lists registered message color rules.

## Syntax

### __AllParameterSets

```
Get-PSFMessageColorTransform [[-Name] <string>] [<CommonParameters>]
```

## Description

Lists registered message color rules.

## Examples

### EXAMPLE 1

```powershell
Get-PSFMessageColorTransform
```

Lists all registered message color rules.

## Parameters

### Name

Name by which to filter the rules.
Defaults to: *

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


