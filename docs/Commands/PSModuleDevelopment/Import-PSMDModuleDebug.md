---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Import-PSMDModuleDebug
---

# Import-PSMDModuleDebug

## Synopsis

Invokes the preconfigured import of a module.

## Syntax

### __AllParameterSets

```
Import-PSMDModuleDebug [[-Name] <string>] [<CommonParameters>]
```

## Description

Invokes the preconfigured import of a module.

## Examples

### EXAMPLE 1

```powershell
Import-PSMDModuleDebug -Name 'cPSNetwork'
```

Imports the cPSNetwork module as it was configured to be imported using Set-ModuleDebug.

## Parameters

### Name

The exact name of the module to import using the specified configuration.

```yaml
Type: System.String
DefaultValue: ''
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


