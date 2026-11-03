---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Stop-PSFRunspaceWorker
---

# Stop-PSFRunspaceWorker

## Synopsis

Stops a specific runspace worker, part of a Runspace Workflow.

## Syntax

### __AllParameterSets

```
Stop-PSFRunspaceWorker [[-InputObject] <RSWorker[]>] [<CommonParameters>]
```

## Description

Stops a specific runspace worker, part of a Runspace Workflow.
This ends all associated runspaces, but does not affect any queue content.

## Examples

### EXAMPLE 1

```powershell
$worker | Stop-PSFRunspaceWorker
```

Stops the worker object in $worker.

## Parameters

### InputObject

The Worker object to stop.

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


