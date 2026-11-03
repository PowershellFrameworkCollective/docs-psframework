---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFFilter
---

# Test-PSFFilter

## Synopsis

Tests a filter expression on whether it is valid.

## Syntax

### default

```
Test-PSFFilter -Expression <string> [<CommonParameters>]
```

### Object

```
Test-PSFFilter -Expression <string> -ConditionSet <ConditionSet> [<CommonParameters>]
```

### Name

```
Test-PSFFilter -Expression <string> -SetModule <string> -SetName <string> [<CommonParameters>]
```

## Description

Tests a filter expression on whether it is valid.
Can also validate, that it will work with the specified condition set.

## Examples

### EXAMPLE 1

```powershell
Test-PSFFilter -Expression 'OSWindows -or EnvAzurePipelines'
```

Validates the syntax of the "OSWindows -or EnvAzurePipelines" expression (which is correct).

### EXAMPLE 2

```powershell
Test-PSFFilter -Expression 'OSWindows -or EnvAzurePipelines' -SetModule PSFramework -SetName Environment
```

Validates the syntax of the "OSWindows -or EnvAzurePipelines" expression (which is correct).
It then compares it to the latest version of the Environment ConditionSet from within the PSFramework and validates, that it contains the conditions used in the expression ("OSWindows" and "EnvAzurePipelines").

## Parameters

### ConditionSet

The condition set object (as returned by Get-PSFFilterConditionSet) to validate against the expression.

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

The filter expression to validate.

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

The name of the module from which to pick up the condition set to validate against the expression.

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

The name of the condition set to validate against the expression.

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


