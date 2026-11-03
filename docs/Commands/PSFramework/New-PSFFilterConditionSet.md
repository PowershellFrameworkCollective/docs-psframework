---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFFilterConditionSet
---

# New-PSFFilterConditionSet

## Synopsis

Create a new filter condition set.

## Syntax

### default

```
New-PSFFilterConditionSet -Module <string> -Name <string> [-Version <version>] [<CommonParameters>]
```

### Objects

```
New-PSFFilterConditionSet -Module <string> -Name <string> [-Version <version>]
 [-Conditions <Condition[]>] [<CommonParameters>]
```

### Scriptblock

```
New-PSFFilterConditionSet -Module <string> -Name <string> [-Version <version>]
 [-ScriptBlock <scriptblock>] [<CommonParameters>]
```

## Description

Create a new filter condition set.
A filter condition set is a grouping of filter conditions.
These sets are referenced when creating or invoking a filter expression and are the logic implementation used to evaluate the expression.

Individual filter conditions can be added, and ...
- Not all Conditions in a set need be used in any given Filter expression using that set.
- Not all Conditions must be from the same module as the Condition Set.

## Examples

### EXAMPLE 1

```powershell
New-PSFFilterConditionSet -Module 'Bartender' -Name 'Alcohols'
```

Defines a new Condition Set named Alcohols in the module Bartender.
This set is created empty and must later be filled with Conditions before using it.

### EXAMPLE 2

```powershell
Get-PSFFilterCondition -Module Bartender | New-PSFFilterConditionSet -Module 'Bartender' -Name 'Alcohols'
```

Defines a new Condition Set named Alcohols in the module Bartender.
Adds all Conditions defined in the same module to it.

### EXAMPLE 3

```powershell
New-PSFFilterConditionSet -Module 'Bartender' -Name 'Alcohols' -ScriptBlock {
	New-PSFFilterCondition -Module Bartender -Name Beer -ScriptBlock { $_.Type -eq 'Beer' }
	New-PSFFilterCondition -Module Bartender -Name Vodka -ScriptBlock { $_.Type -eq 'Vodka' }
	New-PSFFilterCondition -Module Bartender -Name Whiskey -ScriptBlock { $_.Type -eq 'Whiskey' }
	New-PSFFilterCondition -Module Bartender -Name Rum -ScriptBlock { $_.Type -eq 'Rum' }
}
```

Defines a new Condition Set named Alcohols in the module Bartender.
Adds the four newly created Coditions straight to the Set.

## Parameters

### Conditions

The conditions that are part of the Condition Set.
These are the individual technical implementations used to evaluate a fitler expression.
Use New-PSFFilterCondition to define these objects or Get-PSFFilterCondition to retrieve already defined objects.

```yaml
Type: PSFramework.Filter.Condition[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Objects
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Module

The module that owns the filter condition set.

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

### Name

The name of the filter condition set.
This name is unique within any given module.

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

### ScriptBlock

A Scriptblock that will be executed and all Filter Condition objects returned will become part of the set.
This allows combining the definition of a Condition Set and its component Conditions into a single call.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Scriptblock
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Version

The version of the filter condition set.
You can provide multiple versions of a set for backwards compatiblity, however selecting the correct version for your expressions is your own responsibility.
Defaults to 1.0.0

```yaml
Type: System.Version
DefaultValue: 1.0.0
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


