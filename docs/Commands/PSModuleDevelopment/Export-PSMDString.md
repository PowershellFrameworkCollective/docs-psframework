---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Export-PSMDString
---

# Export-PSMDString

## Synopsis

Parses a module that uses the PSFramework localization feature for strings and their value.

## Syntax

### __AllParameterSets

```
Export-PSMDString [-ModuleRoot] <string> [<CommonParameters>]
```

## Description

Parses a module that uses the PSFramework localization feature for strings and their value.
This command can be used to generate and update the language files used by the module.
It is also used in automatic tests, ensuring no abandoned string has been left behind and no key is unused.

## Examples

### EXAMPLE 1

```powershell
Export-PSMDString -ModuleRoot 'C:\Code\Github\MyModuleProject\MyModule'
```

Generates the strings data for the MyModule module.

## Parameters

### ModuleRoot

The root of the module to process.
Must be the root folder where the psd1 file is stored in.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- ModuleBase
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


