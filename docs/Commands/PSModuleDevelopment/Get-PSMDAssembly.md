---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDAssembly
---

# Get-PSMDAssembly

## Synopsis

Returns the assemblies currently loaded.

## Syntax

### __AllParameterSets

```
Get-PSMDAssembly [[-Filter] <string>] [<CommonParameters>]
```

## Description

Returns the assemblies currently loaded.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDAssembly
```

Lists all imported libraries

### EXAMPLE 2

```powershell
Get-PSMDAsssembly -Filter "Microsoft.*"
```

Lists all imported libraries whose name starts with "Microsoft.".

## Parameters

### Filter

Default: *
The name to filter by

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


