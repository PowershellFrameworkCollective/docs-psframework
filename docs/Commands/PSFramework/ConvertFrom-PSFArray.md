---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: ConvertFrom-PSFArray
---

# ConvertFrom-PSFArray

## Synopsis

Flattens properties that have array values.

## Syntax

### __AllParameterSets

```
ConvertFrom-PSFArray [[-JoinBy] <string>] [[-PropertyName] <string[]>] [-InputObject <Object>]
 [<CommonParameters>]
```

## Description

Flattens properties that have array values.
With this you can prepare objects for export to systems that cannot handle collection in propertyvalues.
This flattening happens using a string join operation, so the output on modified properties is guaranteed to be a string.

## Examples

### EXAMPLE 1

```powershell
Get-Something | ConvertFrom-PSFArray | Export-Csv -Path .\output.csv
```

Processes the output of Get-Something in order to produce a flat table to export data to csv without trimming collections.

## Parameters

### InputObject

The objects the properties of which to flatten.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### JoinBy

The string sequence to join values by.
Defaults to ", "

```yaml
Type: System.String
DefaultValue: ','
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

### PropertyName

The properties to affect.
Interprets wildcards, defaults to '*'.

```yaml
Type: System.String[]
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


