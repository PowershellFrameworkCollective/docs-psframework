---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: ConvertFrom-PSFClixml
---

# ConvertFrom-PSFClixml

## Synopsis

Converts data that was serialized from an object back into that object.

## Syntax

### __AllParameterSets

```
ConvertFrom-PSFClixml [-InputObject] <Object> [<CommonParameters>]
```

## Description

Converts data that was serialized from an object back into that object.

Use Import-PSFclixml to restore objects serialized and written to file.
This command is designed for converting serialized data in memory, for example to expand objects returned by a network api.

## Examples

### EXAMPLE 1

```powershell
$data | ConvertFrom-PSFClixml
```

Converts the data stored in $data back into objects

## Parameters

### InputObject

The serialized data to restore to objects.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


