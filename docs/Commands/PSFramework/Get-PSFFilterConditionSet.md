---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFFilterConditionSet
---

# Get-PSFFilterConditionSet

## Synopsis

Retrieve defined filter condition sets.

## Syntax

### __AllParameterSets

```
Get-PSFFilterConditionSet [[-Module] <string>] [[-Name] <string>] [[-Version] <version>]
 [-AllVersions] [<CommonParameters>]
```

## Description

Retrieve defined filter condition sets.
Filter condition sets are a grouped set of conditions used in filter expressions.
Create a filter expression by using New-PSFFilter.

## Examples

### EXAMPLE 1

```powershell
Get-PSFFilterConditionSet
```

List all defined filter condition sets.

### EXAMPLE 2

```powershell
Get-PSFFilterConditionSet -Module PSFramework -Name Environment
```

Returns the filter condition set "Environment" from the module PSFramework.

## Parameters

### AllVersions

Retrieve all versions of a given filter condition set.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### Module

The module to filter by.
Defaults to '*'

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

### Name

The name of the condition set to retrieve.
Defaults to '*'

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Version

Retrieve a specific version of the filter condition set.
By default, the latest version only is returned.

```yaml
Type: System.Version
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


