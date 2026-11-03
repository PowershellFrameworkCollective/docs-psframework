---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDModuleDebug
---

# Get-PSMDModuleDebug

## Synopsis

Retrieves module debugging configurations

## Syntax

### __AllParameterSets

```
Get-PSMDModuleDebug [[-Filter] <string>] [<CommonParameters>]
```

## Description

Retrieves a list of all matching module debugging configurations.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDModuleDebug -Filter *net*
```

Returns the module debugging configuration for all modules with a name that contains "net"

## Parameters

### Filter

Default: "*"
A string filter applied to the module name.
All modules of matching name (using a -Like comparison) will be returned.

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


