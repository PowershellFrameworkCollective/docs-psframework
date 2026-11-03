---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFRunspaceWorker
---

# Get-PSFRunspaceWorker

## Synopsis

Retrieve workers associated with a Runspace Workflow.

## Syntax

### __AllParameterSets

```
Get-PSFRunspaceWorker [[-Name] <string>] [[-WorkflowName] <string[]>]
 [[-InputObject] <RSWorkflow[]>] [<CommonParameters>]
```

## Description

Retrieve workers associated with a Runspace Workflow.

## Examples

### EXAMPLE 1

```powershell
Get-PSFRunspaceWorkflow | Get-PSFRunspaceWorker
```

Get all workers of all runspace workflows.

## Parameters

### InputObject

Workflow object from which to retrieve workers.
The workflow contains all the workers, queues and management tools for the Runspace Workflow.

```yaml
Type: PSFramework.Runspace.RSWorkflow[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the worker to filter by.
Defaults to *

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

### WorkflowName

Name of the Runspace Workflow from which to retrieve workers.
The workflow contains all the workers, queues and management tools for the Runspace Workflow.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
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

## Links

Microsoft.PowerShell.PlatyPS.Model.Links


