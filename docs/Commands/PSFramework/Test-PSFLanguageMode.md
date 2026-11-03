---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFLanguageMode
---

# Test-PSFLanguageMode

## Synopsis

Tests, in what language mode a specified scriptblock is in.

## Syntax

### __AllParameterSets

```
Test-PSFLanguageMode [-ScriptBlock] <scriptblock> [[-Mode] <PSLanguageMode[]>] [-Not]
 [<CommonParameters>]
```

## Description

Tests, in what language mode a specified scriptblock is in.
Use this to determine the trustworthyness of a scriptblock, or for insights, into what its capabilities are.

## Examples

### EXAMPLE 1

```powershell
Test-PSFLanguageMode -ScriptBlock $ScriptBlock
```

Returns, whether the $Scriptblock is in FullLanguage mode.

### EXAMPLE 2

```powershell
Test-PSFLanguageMode -ScriptBlock $code -Mode ConstrainedLanguage -Not
```

Returns $true if the specified scriptblock is NOT inconstrained language mode.

## Parameters

### Mode

The Languagemode(s) to compare it to.
The scriptblock must be in one of the specified modes.
Defaults to 'FullLanguage'

```yaml
Type: System.Management.Automation.PSLanguageMode[]
DefaultValue: FullLanguage
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

### Not

Reverses the test results - now the scriptblock may NOT be in one of the specified language modes.

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

### ScriptBlock

The scriptblock to test.

```yaml
Type: System.Management.Automation.ScriptBlock
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


