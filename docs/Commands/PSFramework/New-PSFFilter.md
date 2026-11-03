---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFFilter
---

# New-PSFFilter

## Synopsis

Creates a new filter object.

## Syntax

### default

```
New-PSFFilter -Expression <string> [<CommonParameters>]
```

### Object

```
New-PSFFilter -Expression <string> -ConditionSet <ConditionSet> [<CommonParameters>]
```

### Name

```
New-PSFFilter -Expression <string> -SetModule <string> -SetName <string> [<CommonParameters>]
```

## Description

Creates a new filter object based off the specified expression.
Optionally, an associated condition set can be specified, either as object or by name and module.
Conditions Set contain the implementation of the condition logic, that will be used when evaluating the filter expression.

These filter objects can then be used to execute validation either statically or against input objects.
Combined with filter conditions and condition sets, filters allow defining a custom filter syntax that is easy to write humanly readable filter expressions for without exposing direct code execution.
This makes filter expressions suitable for data regions and makes conditions easily reusable.

## Examples

### EXAMPLE 1

```powershell
New-PSFFilter -Expression 'OSWindows -or EnvAzurePipelines'
```

Creates a filter object around the "OSWindows -or EnvAzurePipelines" expression.

### EXAMPLE 2

```powershell
New-PSFFilter -Expression 'OSWindows -or EnvAzurePipelines' -SetModule PSFramework -SetName Environment
```

Creates a filter object around the "OSWindows -or EnvAzurePipelines" expression.
It then attaches the latest version of the Environment ConditionSet from within the PSFramework module.

## Parameters

### ConditionSet

A condition set object to attach to the filter.

```yaml
Type: PSFramework.Filter.ConditionSet
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Object
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Expression

The expression to build a filter object for.
Can only consist of:
- Names of conditions: Words (may contain letters, numbers and underscore, but no dash)
- Parenthesis
- Logical operators (-or, -and, -not, -xor)

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

### SetModule

The name of the module from which to select the condition set to attach to the filter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### SetName

The name of the condition set to attach to the filter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


