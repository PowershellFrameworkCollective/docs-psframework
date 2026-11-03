---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Start-PSFRunspaceWorker
---

# Start-PSFRunspaceWorker

## Synopsis

Start a runspace worker, part of the logic executing a Runspace Workflow.

## Syntax

### __AllParameterSets

```
Start-PSFRunspaceWorker [[-InputObject] <RSWorker[]>] [<CommonParameters>]
```

## Description

Start a runspace worker, part of the logic executing a Runspace Workflow.
This will have it start its workers and process any queued input.

Use this to start only part of a Runspace Workflow, rather than all of it.

## Examples

### EXAMPLE 1

```powershell
$worker | Start-PSFRunspaceWorker
```

Starts the worker specified in $worker

## Parameters

### InputObject

The Worker object to start.

```yaml
Type: PSFramework.Runspace.RSWorker[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Links

Microsoft.PowerShell.PlatyPS.Model.Links


