---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Stop-PSFRunspaceWorkflow
---

# Stop-PSFRunspaceWorkflow

## Synopsis

Stop a running Runspace Workflow.

## Syntax

### __AllParameterSets

```
Stop-PSFRunspaceWorkflow [[-Name] <string[]>] [[-InputObject] <RSWorkflow[]>] [<CommonParameters>]
```

## Description

Stop a running Runspace Workflow.
This shuts down all running runspaces of all associated workers.
Queues will remain unaffected, and the Workflow remains registered and available.

To fully remove it, use Remove-PSFRunspaceWorkflow instead.

## Examples

### EXAMPLE 1

```powershell
$workflow | Stop-PSFRunspaceWorkflow
```

Stops the specified Runspace Workflow.

## Parameters

### InputObject

The Runspace Workflow object to stop.

```yaml
Type: PSFramework.Runspace.RSWorkflow[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the Runspace Workflow to stop.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Links

Microsoft.PowerShell.PlatyPS.Model.Links


