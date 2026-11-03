---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDBuildAction
---

# Get-PSMDBuildAction

## Synopsis

Get a list of registered build actions.

## Syntax

### __AllParameterSets

```
Get-PSMDBuildAction [[-Name] <string>] [<CommonParameters>]
```

## Description

Get a list of registered build actions.
Actions are the scriptblocks that are used to execute the build logic when running Invoke-PSMDBuildProject.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDBuildAction
```

Get a list of all registered build actions.

## Parameters

### Name

The name by which to filter the actions returned.
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
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


