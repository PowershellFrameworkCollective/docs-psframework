---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSUDrive
---

# Set-PSUDrive

## Synopsis

Creates a new psdrive, and moves location to it.

## Syntax

### __AllParameterSets

```
Set-PSUDrive [-Name] <Object> [[-Root] <string>] [<CommonParameters>]
```

## Description

Will create a PSDrive, by default in the current path.
This allows swiftly reducing path length.
Then it will immediately change location to the new drive.

## Examples

### EXAMPLE 1

```powershell
set-as pr
```

Sets the current path as drive "pr" and sets it as the current location.

## Parameters

### Name

What to name the new PSDrive?

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

### Root

Default: .
The root of the new drive.

```yaml
Type: System.String
DefaultValue: .
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

## Notes

Author: Donovan Brown
Source: http://donovanbrown.com/post/Shorten-your-PowerShell-directory-path

Thank you for sharing and granting permission to use this convenience :)



