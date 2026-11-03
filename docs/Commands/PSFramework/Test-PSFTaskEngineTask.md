---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Test-PSFTaskEngineTask
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFTaskEngineTask
---

# Test-PSFTaskEngineTask

## Synopsis

Tests, whether the specified task has already been executed.

## Syntax

### __AllParameterSets

```
Test-PSFTaskEngineTask [-Name] <string> [<CommonParameters>]
```

## Description

Tests, whether the specified task has already been executed.
Returns false, if the task doesn't exist.

## Examples

### EXAMPLE 1

```powershell
Test-PSFTaskEngineTask -Name 'mymodule.maintenance'
```

Returns, whether the task named 'mymodule.maintenance' has already been executed at least once.

## Parameters

### Name

Name of the task to test

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


