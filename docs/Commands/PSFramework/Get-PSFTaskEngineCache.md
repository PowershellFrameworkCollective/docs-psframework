---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFTaskEngineCache
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFTaskEngineCache
---

# Get-PSFTaskEngineCache

## Synopsis

Retrieve values from the cache for a task engine task.

## Syntax

### __AllParameterSets

```
Get-PSFTaskEngineCache [-Module] <string> [-Name] <string> [<CommonParameters>]
```

## Description

Retrieve values from the cache for a task engine task.
Tasks scheduled under the PSFramework task engine do not have a way to directly pass information to the primary runspace.
Using Set-PSFTaskEngineCache, they can store the information somewhere where the main runspace can retrieve it using this function.

## Examples

### EXAMPLE 1

```powershell
Get-PSFTaskEngineCache -Module 'mymodule' -Name 'maintenancetask'
```

Retrieves the information stored under 'mymodule.maintenancetask'

## Parameters

### Module

The name of the module that generated the task.
Use scriptname in case of using this within a script.
Note: Must be the same as the name used within the task when calling 'Set-PSFTaskEngineCache'

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the task for which the cache is.
Note: Must be the same as the name used within the task when calling 'Set-PSFTaskEngineCache'

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


