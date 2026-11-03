---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Read-PSMDScript
---

# Read-PSMDScript

## Synopsis

Parse the content of a script

## Syntax

### Script

```
Read-PSMDScript [-ScriptCode] <scriptblock> [<CommonParameters>]
```

### File

```
Read-PSMDScript -Path <string[]> [<CommonParameters>]
```

## Description

Uses the powershell parser to parse the content of a script or scriptfile.

## Examples

### EXAMPLE 1

```powershell
Read-PSMDScript -ScriptCode $ScriptCode
```

Parses the code in $ScriptCode

### EXAMPLE 2

```powershell
Get-ChildItem | Read-PSMDScript
```

Parses all script files in the current directory

## Parameters

### Path

Path to the scriptfile to parse.
Silently ignores folder objects.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- FullName
ParameterSets:
- Name: File
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ScriptCode

The scriptblock to parse.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Script
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


