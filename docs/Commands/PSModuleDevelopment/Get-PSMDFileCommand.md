---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDFileCommand
---

# Get-PSMDFileCommand

## Synopsis

Parses a scriptfile and returns the contained/used commands.

## Syntax

### __AllParameterSets

```
Get-PSMDFileCommand [-Path] <string[]> [-EnableException] [<CommonParameters>]
```

## Description

Parses a scriptfile and returns the contained/used commands.
Use this to determine, what command resources are being used.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDFileCommand -Path './task_usersync.ps1'
```

Parses the scriptfile task_usersync.ps1 for commands used.

## Parameters

### EnableException

Replaces user friendly yellow warnings with bloody red exceptions of doom!
Use this if you want the function to throw terminating errors you want to catch.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

The path to the scriptfile to parse.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
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


