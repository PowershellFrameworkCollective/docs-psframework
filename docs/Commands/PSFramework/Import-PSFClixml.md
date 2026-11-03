---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Import-PSFClixml
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Import-PSFClixml
---

# Import-PSFClixml

## Synopsis

Imports objects serialized using Export-Clixml or Export-PSFClixml.

## Syntax

### __AllParameterSets

```
Import-PSFClixml [-Path] <string[]> [-Encoding <EncodingParameter>] [<CommonParameters>]
```

## Description

Imports objects serialized using Export-Clixml or Export-PSFClixml.

It can handle compressed and non-compressed exports.

## Examples

### EXAMPLE 1

```powershell
Import-PSFClixml -Path '.\object.xml'
```

Imports the objects serialized to object.xml in the current folder.

## Parameters

### Encoding

Text-based files might be stored with any arbitrary encoding chosen.
By default, this function assumes UTF8 encoding (the default export encoding for Export-PSFClixml).

```yaml
Type: PSFramework.Parameter.EncodingParameter
DefaultValue: (Get-PSFConfigValue -FullName 'psframework.text.encoding.defaultread' -Fallback 'utf-8')
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

### Path

Path to the files to import.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- FullName
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


