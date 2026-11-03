---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFPath
---

# Get-PSFPath

## Synopsis

Access a configured path.

## Syntax

### __AllParameterSets

```
Get-PSFPath [-Name] <string> [<CommonParameters>]
```

## Description

Access a configured path.
Paths can be configured using Set-PSFPath or using the configuration system.
To register a path using the configuration system create a setting key named like this:
"PSFramework.Path.<PathName>"
For example the following setting points at the temp path:
"PSFramework.Path.Temp"

## Examples

### EXAMPLE 1

```powershell
Get-PSFPath -Name 'temp'
```

Returns the temp path.

## Parameters

### Name

Name of the path to retrieve.

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


