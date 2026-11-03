---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSUDirectory
---

# New-PSUDirectory

## Synopsis

Creates a folder and moves the current path to it.

## Syntax

### __AllParameterSets

```
New-PSUDirectory [-Path] <Object> [<CommonParameters>]
```

## Description

Creates a folder and moves the current path to it.

## Examples

### EXAMPLE 1

```powershell
mcd Test
```

creates folder C:\Test, then moves the current location to it.

## Parameters

### Path

Name of the folder to create and move to.

```yaml
Type: System.Object
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

Author: Donovan Brown
Source: http://donovanbrown.com/post/How-to-create-and-navigate-a-directory-with-a-single-command

Thank you for sharing and granting permission to use this convenience :)



