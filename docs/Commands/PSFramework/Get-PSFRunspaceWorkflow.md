---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFRunspaceWorkflow
---

# Get-PSFRunspaceWorkflow

## Synopsis

Returns a list of registered runspace workflows.

## Syntax

### __AllParameterSets

```
Get-PSFRunspaceWorkflow [[-Name] <string>] [<CommonParameters>]
```

## Description

Returns a list of registered runspace workflows.
A Runspace workflow object is the main component managing a PSFramework Runspace Workflow

## Examples

### EXAMPLE 1

```powershell
Get-PSFRunspaceWorkflow
```

Returns all registered runspace workflows.

## Parameters

### Name

By which name to filter.
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

## Links

Microsoft.PowerShell.PlatyPS.Model.Links


