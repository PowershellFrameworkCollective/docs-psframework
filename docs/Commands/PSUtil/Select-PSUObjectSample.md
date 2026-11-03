---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Select-PSUObjectSample
---

# Select-PSUObjectSample

## Synopsis

Used to only pick a sample from the objects passed to the function.

## Syntax

### __AllParameterSets

```
Select-PSUObjectSample [[-Number] <int>] [[-Skip] <int>] -InputObject <Object> [<CommonParameters>]
```

## Description

Used to only pick a sample from the objects passed to the function.

## Examples

### EXAMPLE 1

```powershell
Get-ChildItem | Select-PSUObjectSample -Skip 1 -Number 3
```

Scans the current directory, skips the first returned object, then passes through the next three objects and skips the rest.

### EXAMPLE 2

```powershell
dir | s 3 1
```

Same as the previous example, only this time using aliases and positional binding.
Scans the current directory, skips the first returned object, then passes through the next three objects and skips the rest.

## Parameters

### InputObject

The objects to pick a sample from.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Number

How many objects to pick
Use a negative number to pick the last X items instead.

```yaml
Type: System.Int32
DefaultValue: 1
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

### Skip

How many objects to skip.

```yaml
Type: System.Int32
DefaultValue: 0
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


