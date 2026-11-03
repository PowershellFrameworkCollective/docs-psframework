---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSUPathAlias
---

# Get-PSUPathAlias

## Synopsis

Gets the PSUPathAlias configuration values.

## Syntax

### __AllParameterSets

```
Get-PSUPathAlias [[-Alias] <string>] [<CommonParameters>]
```

## Description

Gets the PSUPathAlias configuration values from the PSFConfig system.

## Examples

### EXAMPLE 1

```powershell
Get-PSUPathAlias
```

Returns all aliases

## Parameters

### Alias

This is the name of the alias that you want for Set-PSUPath.
Wildcards accepted

Default Value: *

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


