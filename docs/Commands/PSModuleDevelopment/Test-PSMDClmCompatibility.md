---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_language_modes?view=powershell-7.1#constrained-language-constrained-language
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSMDClmCompatibility
---

# Test-PSMDClmCompatibility

## Synopsis

Tests, whether the targeted file would have trouble executing under Constrained Language Mode.

## Syntax

### __AllParameterSets

```
Test-PSMDClmCompatibility [-Path] <string[]> [<CommonParameters>]
```

## Description

Tests, whether the targeted file would have trouble executing under Constrained Language Mode (CLM).

In CLM, various language features and commands are constrained in their ability to execute.
This command uses the AST parser to scan for as many known issues as possible and gives a comprehensive report for concerns found.

Detected Issues:
- Custom Object creation using PSCustomObject
- Calling methods on untrusted types
- Converting to an untrusted type
- Using Add-Type to load anything but trusted libraries
- Using New-Object to instantiate an untrusted type
- Assigning Values to properties*

*This detection will likely have a large rate of false positives, due to inability to detect datatype of the object, the property of which is being set.
Generally, assigning values to the properties of PSObjects is fine.

Note:
Many of the detections make allowances for "whitelisted types".
In CLM, access to most types is constrained, except for a few, known to be trustworthy types.
To get a full list of the constraints and what types are allowed, see the documentation:

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_language_modes?view=powershell-7.1#constrained-language-constrained-language

## Examples

### EXAMPLE 1

```powershell
Get-ChildItem C:\Scripts | Test-PSMDClmCompatibility
```

Scans each file in C:\Scripts and returns any issues that might occur in CLM.

## Parameters

### Path

Path to the scriptfile to scan.

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

## Links

Microsoft.PowerShell.PlatyPS.Model.Links


