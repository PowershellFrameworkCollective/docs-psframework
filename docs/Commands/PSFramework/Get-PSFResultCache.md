---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFResultCache
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFResultCache
---

# Get-PSFResultCache

## Synopsis

Returns the last stored result

## Syntax

### __AllParameterSets

```
Get-PSFResultCache [[-Type] <string>] [<CommonParameters>]
```

## Description

Functions that implement the result cache store their information in the cache.
This can then be retrieved by the user running this command.
This forgives the user for forgetting to store the output in a variable and is especially precious when running commands that take a while to execute.

## Examples

### EXAMPLE 1

```powershell
Get-PSFResultCache
```

Returns the latest cached result.

### EXAMPLE 2

```powershell
Get-PSFResultCache -Type 'All'
```

Returns a meta-information object containing the last result, when it was written and which function did the writing.

## Parameters

### Type

Default: Value
Options: All, Value
By default, this function will return the output that was cached during the last execution.
However, this mode can be switched:
- All: Returns everything that has been cached.
This includes the name of the command calling Set-PFSResultCache as well as the timestamp when it was called.
- Value: Returns just the object(s) that were written to cache

```yaml
Type: System.String
DefaultValue: Value
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


