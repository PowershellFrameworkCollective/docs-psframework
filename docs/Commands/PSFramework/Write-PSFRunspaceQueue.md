---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Write-PSFRunspaceQueue
---

# Write-PSFRunspaceQueue

## Synopsis

Write data to a queue of a Runspace Workflow.

## Syntax

### Single

```
Write-PSFRunspaceQueue -Name <string> -Value <Object> [-Close] [-WorkflowName <string[]>]
 [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### SingleCurrent

```
Write-PSFRunspaceQueue -Name <string> -Value <Object> -UseCurrent [-Close] [<CommonParameters>]
```

### Multi

```
Write-PSFRunspaceQueue -Name <string> -BulkValues <Object[]> [-Close] [-WorkflowName <string[]>]
 [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

## Description

Write data to a queue of a Runspace Workflow.
This is generally used to provide the initial input of the first queue.

Can also be used by a worker code to provide output to more than one queue.

## Examples

### EXAMPLE 1

```powershell
$workflow | Write-PSFRunspaceQueue -Name input -BulkValues $entries
```

Provides all values in $entries as input for the queue named "input" of the Runspace Workflow in $workflow.

## Parameters

### BulkValues

Write multiple values as separate entries.

```yaml
Type: System.Object[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Multi
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Close

Closes the queue after writing the input.
This prevents further data to be added to the queue,
and allows a worker to know, when it has fully processed input.

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

### InputObject

Workflow object that owns the queue written to.

```yaml
Type: PSFramework.Runspace.RSWorkflow[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Multi
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Single
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

Name of the Queue to write to.

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

### UseCurrent

Write to a queue in the current runspace workflow.
Only valid when used from within the code of a Runspace Workflow worker.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SingleCurrent
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Value

The value to write.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SingleCurrent
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Single
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### WorkflowName

Name of the workflow owning the queue written to.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Multi
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Single
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


