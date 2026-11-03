---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Test-PSFTaskEngineCache
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFTaskEngineCache
---

# Test-PSFTaskEngineCache

## Synopsis

Tests, whether the specified task engine cache-entry has been written.

## Syntax

### __AllParameterSets

```
Test-PSFTaskEngineCache [-Module] <string> [-Name] <string> [<CommonParameters>]
```

## Description

Tests, whether the specified task engine cache-entry has been written.

## Examples

### EXAMPLE 1

```powershell
Test-PSFTaskEngineCache -Module 'mymodule' -Name 'maintenancetask'
```

Returns, whether the cache has been set for the module 'mymodule' and the task 'maintenancetask'
Does not require the cache to actually contain a value, but must exist.

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


