---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFRunspace
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFRunspace
---

# Get-PSFRunspace

## Synopsis

Returns registered runspaces.

## Syntax

### __AllParameterSets

```
Get-PSFRunspace [[-Name] <string>] [<CommonParameters>]
```

## Description

Returns a list of runspaces that have been registered with the PSFramework

## Examples

### EXAMPLE 1

```powershell
Get-PSFRunspace
```

Returns all registered runspaces

### EXAMPLE 2

```powershell
Get-PSFRunspace -Name 'mymodule.maintenance'
```

Returns the runspace registered under the name 'mymodule.maintenance'

## Parameters

### Name

Default: "*"
Only registered runspaces of similar names are returned.

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


