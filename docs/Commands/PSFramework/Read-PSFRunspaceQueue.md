---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Read-PSFRunspaceQueue
---

# Read-PSFRunspaceQueue

## Synopsis

Reads data from a queue associated with a runspace workflow.

## Syntax

### Default

```
Read-PSFRunspaceQueue -Name <string> [-All] [-WorkflowName <string[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

### Peek

```
Read-PSFRunspaceQueue -Name <string> [-All] [-Peek] [-WorkflowName <string[]>]
 [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### Continual

```
Read-PSFRunspaceQueue -Name <string> [-Continual] [-WorkflowName <string[]>]
 [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

## Description

Reads data from a queue associated with a runspace workflow.
Can be used to receive the final workflow results or to collect data outside of the default workflow.
Note: Reading data from a queue removes the item from it!

## Examples

### EXAMPLE 1

```powershell
$workflow | Read-PSFRunspaceQueue -Name Done -All
```

Read / retrieve all items from the queue "Done" of the workflow $workflow

### EXAMPLE 2

```powershell
Read-PSFRunspaceQueue -Name extraData
```

Read a value from "extraData" queue of the current Runspace Workflow.
Only works from within the code of a running worker.
Keep in mind that worker code automatically receives input from the specified input queue.

## Parameters

### All

Retrieve all items from the queue.
By default, only the oldest entry is returned.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Peek
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Default
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Continual

Keep reading data from the queue until the queue is closed and emptied.
Intended for use in situations, where a processing worker must run within a single pipeline,
rather than the default, repeated calls of the processing scriptblock per queue item.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Continual
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### InputObject

Workflow object the queue read from belongs to.
The workflow contains all the workers, queues and management tools for the Runspace Workload.

```yaml
Type: PSFramework.Runspace.RSWorkflow[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the queue to read data from.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Peek

Retrieve one (or all, if used with -All) item from the queue, without actually removing the item from it.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Peek
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### WorkflowName

Name of the Runspace Workflow the queue read from belongs to.
The workflow contains all the workers, queues and management tools for the Runspace Workload.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
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


