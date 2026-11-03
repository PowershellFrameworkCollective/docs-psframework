---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFLocalizedString
---

# Get-PSFLocalizedString

## Synopsis

Returns the localized strings of a module.

## Syntax

### Default

```
Get-PSFLocalizedString -Module <string> [<CommonParameters>]
```

### Name

```
Get-PSFLocalizedString -Module <string> -Name <string> [<CommonParameters>]
```

## Description

Returns the localized strings of a module.
By default, it creates a variable that has access to each localized string in the module (with string name as propertyname).
Alternatively, by specifying a specific string, that string can instead be returned.

## Examples

### EXAMPLE 1

```powershell
Get-PSFLocalizedString -Module 'MyModule'
```

Returns an object that can be used to access any localized string.

### EXAMPLE 2

```powershell
Get-PSFLocalizedString -Module 'MyModule' -Name 'ErrorValidation'
```

Returns the string for the module 'MyModule'  that is stored under the 'ErrorValidation'  name.

## Parameters

### Module

The name of the module to map.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
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

### Name

The name of the string to return

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


