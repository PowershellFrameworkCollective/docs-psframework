---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSFFilter
---

# Invoke-PSFFilter

## Synopsis

Evaluate a filter.

## Syntax

### ExpressionName

```
Invoke-PSFFilter -Expression <string> -SetModule <string> -SetName <string> [-ArgumentList <Object>]
 [<CommonParameters>]
```

### ExpressionObject

```
Invoke-PSFFilter -Expression <string> -ConditionSet <ConditionSet> [-ArgumentList <Object>]
 [<CommonParameters>]
```

### Filter

```
Invoke-PSFFilter -Filter <Expression> [-ArgumentList <Object>] [-ConditionSet <ConditionSet>]
 [-SetModule <string>] [-SetName <string>] [<CommonParameters>]
```

## Description

Evaluate a filter.
Can either run all by itself - for example to evaluate the runtime environment - or be given an argument to evaluate it against the expression.

Use ...
- New-PSFFilter to customize a filter
- New-PSFFilterCondition to architect your own conditions for use in expressions.
- New-PSFFilterConditionSet to tie conditions together into a set
Each filter must have a condition set assigned to be able to run (as otherwise it will not know which conditions are available).

This function exists mostly for discoverability.
Filter objects returned by New-PSFFilter can be invoked directly using their .Evaluate() method, providing far greater performance at scale.

## Examples

### EXAMPLE 1

```powershell
Invoke-PSFFilter -Expression 'OSWindows -or EnvAzurePipelines' -SetModule PSFramework -SetName Environment
```

Executes the specified filter expression using the Environment ConditionSet from the PSFramework module.
Will return true if executed either on Windows or from within Azure DevOps Pipelines

## Parameters

### ArgumentList

Any argument to specify as input to the filter expression.
All input is passed as one item, to evaluate against multiple items separately, loop the entire command.
Note: To avoid incurring the overhead for large datasets, filter objects returned by New-PSFFilter can be invoked directly using the .Evaluate() method which also accepts arguments.

```yaml
Type: System.Object
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

### ConditionSet

A full Condition Set object as returned by Get-PSFConditionSet.

```yaml
Type: PSFramework.Filter.ConditionSet
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Filter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ExpressionObject
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

The filter expression to execute.
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
- Name: ExpressionName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ExpressionObject
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Filter

The filter object to invoke.
Objects of this type can be created by New-PSFFilter.

```yaml
Type: PSFramework.Filter.Expression
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Filter
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

Name of the module in which to search for a Condition Set.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Filter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ExpressionName
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

Name of the Condition Set to use.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Filter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ExpressionName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


