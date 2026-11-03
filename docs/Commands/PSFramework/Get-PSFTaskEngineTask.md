---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFTaskEngineTask
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFTaskEngineTask
---

# Get-PSFTaskEngineTask

## Synopsis

Returns tasks registered for the task engine

## Syntax

### __AllParameterSets

```
Get-PSFTaskEngineTask [[-Name] <string>] [<CommonParameters>]
```

## Description

Returns tasks registered for the task engine

## Examples

### EXAMPLE 1

```powershell
Get-PSFTaskEngineTask
```

Returns all tasks registered to the task engine

### EXAMPLE 2

```powershell
Get-PSFTaskEngineTask -Name 'mymodule.*'
```

Returns all tasks registered to the task engine whose name starts with 'mymodule.'
(It stands to reason that only tasks belonging to the module 'mymodule' would be returned that way)

## Parameters

### Name

Default: "*"
Only tasks with similar names are returned.

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


