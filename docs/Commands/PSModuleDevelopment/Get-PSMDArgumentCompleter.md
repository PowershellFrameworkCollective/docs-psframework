---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDArgumentCompleter
---

# Get-PSMDArgumentCompleter

## Synopsis

Gets the registered argument completers.

## Syntax

### __AllParameterSets

```
Get-PSMDArgumentCompleter [[-CommandName] <string>] [-ParameterName <string>] [<CommonParameters>]
```

## Description

This function can be used to serach the argument completers registered using either the Register-ArgumentCompleter command or created using the ArgumentCompleter attribute.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDArgumentCompleter
```

Get all argument completers in use in the current PowerShell session.

## Parameters

### CommandName

Filter the results to a specific command.
Wildcards are supported.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases:
- Name
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ParameterName

Filter results to a specific parameter name.
Wildcards are supported.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


