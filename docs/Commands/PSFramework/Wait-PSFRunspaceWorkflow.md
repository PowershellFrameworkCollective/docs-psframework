---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Wait-PSFRunspaceWorkflow
---

# Wait-PSFRunspaceWorkflow

## Synopsis

Wait for a Runspace Workflow to complete.

## Syntax

### Closed

```
Wait-PSFRunspaceWorkflow -Queue <string> [-Closed] [-PassThru] [-ShowProgress]
 [-Timeout <TimeSpanParameter>] [-Name <string[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

### Reference

```
Wait-PSFRunspaceWorkflow -Queue <string> -ReferenceQueue <string> [-ReferenceMultiplier <int>]
 [-PassThru] [-ShowProgress] [-Timeout <TimeSpanParameter>] [-Name <string[]>]
 [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### Count

```
Wait-PSFRunspaceWorkflow -Queue <string> -Count <int> [-PassThru] [-ShowProgress]
 [-Timeout <TimeSpanParameter>] [-Name <string[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

### QueueTimeout

```
Wait-PSFRunspaceWorkflow -Queue <string> -QueueTimeout <TimeSpanParameter> [-PassThru]
 [-ShowProgress] [-Timeout <TimeSpanParameter>] [-Name <string[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

### WorkerReference

```
Wait-PSFRunspaceWorkflow -WorkerName <string> -ReferenceQueue <string> [-ReferenceMultiplier <int>]
 [-PassThru] [-ShowProgress] [-Timeout <TimeSpanParameter>] [-Name <string[]>]
 [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### WorkerCount

```
Wait-PSFRunspaceWorkflow -WorkerName <string> -Count <int> [-PassThru] [-ShowProgress]
 [-Timeout <TimeSpanParameter>] [-Name <string[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

### WorkerClosed

```
Wait-PSFRunspaceWorkflow -WorkerName <string> -Closed [-PassThru] [-ShowProgress]
 [-Timeout <TimeSpanParameter>] [-Name <string[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

## Description

Wait for a Runspace Workflow to complete.

## Examples

### EXAMPLE 1

```powershell
$workflow | Wait-PSFRunspaceWorkflow -Queue Done -Count 1000
```

Wait until 1000 items have been queued to "Done" in total.

### EXAMPLE 2

```powershell
$workflow | Wait-PSFRunspaceWorkflow -Queue Done -PassThru | Stop-PSFRunspaceWorkflow
```

Wait until the "Done" queue has been closed, then stop the workflow.

### EXAMPLE 3

```powershell
$workflow | Wait-PSFRunspaceWorkflow -Queue Done -ReferenceQueue Input
```

Wait until the "Done" queue has processed as many items as there were written to the "Input" queue.

## Parameters

### Closed

The workflow is considered completed, when the queue or worker selected is closed.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: WorkerClosed
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Closed
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Count

The workflow is considered completed, when the queue selected has received the specified number of results.
This looks at the total amount ever provided, not current number queued.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Count
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: WorkerCount
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### InputObject

A runspace workflow object to wait for.

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

Name of the workflow to wait for.

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

### PassThru

Pass through the workflow object waiting for.
Useful to stop it once waiting has completed.

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

### Queue

The name of the queue to measure completion by.
Usually the last output queue in the chain of steps.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Reference
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Count
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Closed
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: QueueTimeout
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### QueueTimeout

Wait based on how long ago the last item was added to the specified queue.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: QueueTimeout
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ReferenceMultiplier

When comparing the result queue with a reference queue, multiply the number of items in the reference queue by this value.
Use when the number of output items, based from the original input, scales by a constant multiplier.
Defaults to 1.

```yaml
Type: System.Int32
DefaultValue: 1
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Reference
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: WorkerReference
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ReferenceQueue

The workflow is considered completed, when the queue selected has received the same number of items as the reference queue.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Reference
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: WorkerReference
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ShowProgress

To show a progressbar while waiting for runspace completion

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

### Timeout

Maximum wait time.
Throws an error if exceeded.
Defaults to 1 day.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
DefaultValue: ''
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

### WorkerName

The name of the worker to measure completion by.
Usually the last step in the chain of steps.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: WorkerReference
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: WorkerCount
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: WorkerClosed
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Links

Microsoft.PowerShell.PlatyPS.Model.Links


