---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Out-PSUVariable
---

# Out-PSUVariable

## Synopsis

Writes the input to a variable.

## Syntax

### __AllParameterSets

```
Out-PSUVariable [-Name] <string> [-InputObject <Object>] [<CommonParameters>]
```

## Description

Writes the input to a variable.
This allows doing variable assignments at the end of a pipeline, rather than just at the beginning.

Previous contents will be overwritten.

## Examples

### EXAMPLE 1

```powershell
Get-ChildItem | Out-PSUVariable -Name 'files'
```

Writes the files & folders in the current path into the variable $files

### EXAMPLE 2

```powershell
dir | ov files
```

Does the same thing as the first example, only this time in a convenient interactive commandline usage

## Parameters

### InputObject

The objects to write.

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

### Name

The name of the variable to write to.

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


