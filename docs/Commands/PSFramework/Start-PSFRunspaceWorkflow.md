---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Start-PSFRunspaceWorkflow
---

# Start-PSFRunspaceWorkflow

## Synopsis

Starts a Runspace Workflow.

## Syntax

### __AllParameterSets

```
Start-PSFRunspaceWorkflow [[-Name] <string[]>] [[-InputObject] <RSWorkflow[]>] [-PassThru]
 [<CommonParameters>]
```

## Description

Starts a Runspace Workflow.
This will launch all workers and their associated runspaces.

Consider queuing input first (Write-PSFRunspaceQueue) before starting the workflow.

## Examples

### EXAMPLE 1

```powershell
Start-PSFRunspaceWorkflow -Name MailboxAnalysis
```

Starts the Runspace Workflow "MailboxAnalysis"

### EXAMPLE 2

```powershell
Get-PSFRunspaceWorkflow | Start-PSFRunspaceWorkflow
```

Start all Runspace Worklflow.

## Parameters

### InputObject

Runspace Workflow object to launch.

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

Name of the Runspace Workflow to launch.

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

### PassThru

Return the runspace workflow just started.

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

## Links

Microsoft.PowerShell.PlatyPS.Model.Links


