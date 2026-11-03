---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Enable-PSFTaskEngineTask
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Enable-PSFTaskEngineTask
---

# Enable-PSFTaskEngineTask

## Synopsis

Enables a task registered to the PSFramework task engine.

## Syntax

### __AllParameterSets

```
Enable-PSFTaskEngineTask [[-Name] <string[]>] [-Task] <PsfTask[]> [<CommonParameters>]
```

## Description

Enables a task registered to the PSFramework task engine.

Note:
Tasks are enabled by default.
Use this function to re-enable a task disabled by Disable-PSFTaskEngineTask.

## Examples

### EXAMPLE 1

```powershell
Get-PSFTaskEngineTask -Name 'mymodule.maintenance' | Enable-PSFTaskEngineTask
```

Enables the task named 'mymodule.maintenance'

## Parameters

### Name

Name of the task to enable.

```yaml
Type: System.String[]
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

### Task

The task registered.
Must be a task object returned by Get-PSFTaskEngineTask.

```yaml
Type: PSFramework.TaskEngine.PsfTask[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


