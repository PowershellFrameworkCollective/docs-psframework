---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSUPathAlias
---

# Remove-PSUPathAlias

## Synopsis

Removes a path alias fromm the configuration system.

## Syntax

### __AllParameterSets

```
Remove-PSUPathAlias [[-Alias] <Object>] [<CommonParameters>]
```

## Description

Removes a path alias from the configuration system using Unregister-PSFConfig.
Note: This command has no effect on configuration setings currently in memory.

## Examples

### EXAMPLE 1

```powershell
Remove-PSUPathAlias -Alias work
```

Removes the path alias named work from the configuration system.

## Parameters

### Alias

The name of the Alias that you want to remove from the configuration system.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


