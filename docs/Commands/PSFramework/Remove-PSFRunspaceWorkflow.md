---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSFRunspaceWorkflow
---

# Remove-PSFRunspaceWorkflow

## Synopsis

Removes a Runspace Workflow, stopping all processing.

## Syntax

### __AllParameterSets

```
Remove-PSFRunspaceWorkflow [-Name] <string[]> [<CommonParameters>]
```

## Description

Removes a Runspace Workflow, stopping all processing.
This stops all workers, ends all runspaces and unlists the workflow object.

The queues remain untouched, but will be garbage collected together with the workflow object,
assuming no variable outside of the module retains it.

## Examples

### EXAMPLE 1

```powershell
Get-PSFRunspaceWorkflow | Remove-PSFRunspaceWorkflow
```

Stops and removes all runspace workflows.

## Parameters

### Name

The name of the Runspace Workflow to remove.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Links

Microsoft.PowerShell.PlatyPS.Model.Links Microsoft.PowerShell.PlatyPS.Model.Links Microsoft.PowerShell.PlatyPS.Model.Links


