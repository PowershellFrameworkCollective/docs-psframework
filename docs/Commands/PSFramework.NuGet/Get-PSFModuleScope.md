---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFModuleScope
---

# Get-PSFModuleScope

## Synopsis

Lists the registered module scopes.

## Syntax

### __AllParameterSets

```
Get-PSFModuleScope [[-Name] <string>] [<CommonParameters>]
```

## Description

Lists the registered module scopes.
These are used as presets with Install-PSFModule's '-Scope' parameter.

Use Register-PSFModuleScope to add additional scopes.

## Examples

### EXAMPLE 1

```powershell
Get-PSFModuleScope
```

Lists all registered module scopes.

## Parameters

### Name

The name of the scope to filter by.
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


