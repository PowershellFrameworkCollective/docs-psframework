---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFFilterCondition
---

# Get-PSFFilterCondition

## Synopsis

Retrieve defined filter conditions.

## Syntax

### default

```
Get-PSFFilterCondition [-Module <string>] [-Name <string>] [-SetName <string>] [<CommonParameters>]
```

### Version

```
Get-PSFFilterCondition [-Module <string>] [-Name <string>] [-SetName <string>] [-Version <version>]
 [<CommonParameters>]
```

### AllVersion

```
Get-PSFFilterCondition [-Module <string>] [-Name <string>] [-SetName <string>] [-AllVersions]
 [<CommonParameters>]
```

## Description

Retrieve defined filter conditions.
Filter conditions can be used as part of a condition set, used to evaluate filter expressions defined with New-PSFFilter.

## Examples

### EXAMPLE 1

```powershell
Get-PSFFilterCondition
```

List all defined filter conditions.

### EXAMPLE 2

```powershell
Get-PSFFilterCondition -Module PSFramework -Name OSWindows
```

Returns the filter condition "OSWindows" from the module PSFramework.

## Parameters

### AllVersions

Retrieve all versions of a given filter condition.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllVersion
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
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the condition to retrieve.
Defaults to '*'

```yaml
Type: System.String
DefaultValue: '*'
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

### SetName

The name of the condition set the condition is assigned to.
Allows searching by assignment.

```yaml
Type: System.String
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

### Version

Retrieve a specific version of the filter condition.
By default, the latest version only is returned.

```yaml
Type: System.Version
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Version
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


