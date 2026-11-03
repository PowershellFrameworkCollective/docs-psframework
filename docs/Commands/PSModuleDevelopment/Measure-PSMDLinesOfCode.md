---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Measure-PSMDLinesOfCode
---

# Measure-PSMDLinesOfCode

## Synopsis

Measures the lines of code ina PowerShell scriptfile.

## Syntax

### __AllParameterSets

```
Measure-PSMDLinesOfCode [-Path] <string[]> [<CommonParameters>]
```

## Description

Measures the lines of code ina PowerShell scriptfile.
This scan uses the AST to figure out how many lines contain actual functional code.

## Examples

### EXAMPLE 1

```powershell
Measure-PSMDLinesOfCode -Path .\script.ps1
```

Measures the lines of code in the specified file.

### EXAMPLE 2

```powershell
Get-ChildItem C:\Scripts\*.ps1 | Measure-PSMDLinesOfCode
```

Measures the lines of code for every single file in the folder c:\Scripts.

## Parameters

### Path

Path to the files to scan.
Folders will be ignored.

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


