---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Import-PSFLocalizedString
---

# Import-PSFLocalizedString

## Synopsis

Imports a set of localized strings from a PowerShell data file.

## Syntax

### __AllParameterSets

```
Import-PSFLocalizedString [-Path] <string> [-Module] <string> [[-Language] <string>]
 [<CommonParameters>]
```

## Description

Imports a set of localized strings from a PowerShell data file.
This is used to feed the localized string feature set.
Always import for all languages, do not select by current language - the system handles language selection.

Strings are process wide, so loading additional languages can be offloaded into a background task.

## Examples

### EXAMPLE 1

```powershell
Import-PSFLocalizedString -Path '$moduleRoot\strings.psd1' -Module 'MyModule'
```

Imports the strings stored in strings.psd1 for the module MyModule as 'en-US' language strings.

## Parameters

### Language

The language of the specific strings file.
Defaults to en-US.

```yaml
Type: System.String
DefaultValue: en-US
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

### Module

The module for which to import the strings.

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

### Path

The path to the psd1 file to import as strings file.

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

## Notes

This command is not safe to expose in a JEA endpoint.
In its need to maintain compatibility it allows for a path for arbitrary code execution.



