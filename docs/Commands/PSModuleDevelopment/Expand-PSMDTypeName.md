---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Expand-PSMDTypeName
---

# Expand-PSMDTypeName

## Synopsis

Returns the full name of the input object's type, as well as the name of the types it inherits from, recursively until System.Object.

## Syntax

### __AllParameterSets

```
Expand-PSMDTypeName [[-InputObject] <Object>] [<CommonParameters>]
```

## Description

Returns the full name of the input object's type, as well as the name of the types it inherits from, recursively until System.Object.

## Examples

### EXAMPLE 1

```powershell
Expand-PSMDTypeName -InputObject "test"
```

Returns the typenames for the string test ("System.String" and "System.Object")

## Parameters

### InputObject

The object whose typename to expand.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


