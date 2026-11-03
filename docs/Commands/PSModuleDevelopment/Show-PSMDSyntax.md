---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Show-PSMDSyntax
---

# Show-PSMDSyntax

## Synopsis

Validate or show parameter set details with colored output

## Syntax

### __AllParameterSets

```
Show-PSMDSyntax [-CommandText] <string> [[-Mode] <string>] [-Legend] [<CommonParameters>]
```

## Description

Analyze a function and it's parameters

The cmdlet / function is capable of validating a string input with function name and parameters

## Examples

### EXAMPLE 1

```powershell
Show-PSMDSyntax -CommandText "New-Item -Path 'c:\temp\newfile.txt'"
```

This will validate all the parameters that have been passed to the Import-D365Bacpac cmdlet.
All supplied parameters that matches a parameter will be marked with an asterisk.

### EXAMPLE 2

```powershell
Show-PSMDSyntax -CommandText "New-Item" -Mode "ShowParameters"
```

This will display all the parameter sets and their individual parameters.

## Parameters

### CommandText

The string that you want to analyze

If there is parameter value present, you have to use the opposite quote strategy to encapsulate the string correctly

E.g.
for double quotes
-CommandText 'New-Item -Path "c:\temp\newfile.txt"'

E.g.
for single quotes
-CommandText "New-Item -Path 'c:\temp\newfile.txt'"

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Legend

Include a legend explaining the color mapping

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

### Mode

The operation mode of the cmdlet / function

Valid options are:
- Validate
- ShowParameters

```yaml
Type: System.String
DefaultValue: Validate
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Notes

Author: Mötz Jensen (@Splaxi)
Twitter: https://twitter.com/splaxi
Original github project: https://github.com/d365collaborative/d365fo.tools



