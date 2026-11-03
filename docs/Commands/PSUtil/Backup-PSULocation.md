---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Backup-PSULocation
---

# Backup-PSULocation

## Synopsis

Sets the location n number of levels up.

## Syntax

### __AllParameterSets

```
Backup-PSULocation [[-Levels] <int>] [<CommonParameters>]
```

## Description

You no longer have to cd ..\..\..\..\ to move back four levels.
You can now
just type bu 4

## Examples

### EXAMPLE 1

```powershell
bu 4
```

PS C:\Users\dlbm3>

## Parameters

### Levels

Number of levels to move back.

```yaml
Type: System.Int32
DefaultValue: (Get-PSFConfigValue -FullName 'PSUtil.Path.BackupStepsDefault' -Fallback 1)
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

## Notes

Author: Donovan Brown
Source: http://donovanbrown.com/post/Why-cd-when-you-can-just-backup

Thank you for sharing and granting permission to use this convenience :)



