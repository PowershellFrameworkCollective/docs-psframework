---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFRunspaceWorkflow
---

# New-PSFRunspaceWorkflow

## Synopsis

Creates a new runspace workflow.

## Syntax

### __AllParameterSets

```
New-PSFRunspaceWorkflow [[-Name] <string>] [-Force] [<CommonParameters>]
```

## Description

Creates a new runspace workflow.
The workflow object is the core element of the runspace workflow system.

It contains the workers, runspaces and queues that execute the workflow.
All workflows are stored centrally and cen be retrieved using Get-PSFRunspaceWorkflow.
To ensure proper cleanup, remember to use Remove-PSFRunspaceWorkflow when completed.

## Examples

### EXAMPLE 1

```powershell
New-PSFRunspaceWorkflow -Name 'MyModule.MyWorkflow
```

Creates a new Runspace Workflow with the name 'MyModule.MyWorkflow'

## Parameters

### Force

Allows overwriting an existing workflow of the same name.
Note: Doing so will terminate all processing on the previous workflow.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### Name

The name of the workflow to create.
Must be unique in the current runspace.

```yaml
Type: System.String
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

## Links

Microsoft.PowerShell.PlatyPS.Model.Links Microsoft.PowerShell.PlatyPS.Model.Links Microsoft.PowerShell.PlatyPS.Model.Links


