---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSUTemp
---

# Invoke-PSUTemp

## Synopsis

Moves the current location to a temp directory.

## Syntax

### __AllParameterSets

```
Invoke-PSUTemp [-Get] [<CommonParameters>]
```

## Description

Moves the current location to a temp directory.

The path returned can be set by configuring the 'psutil.path.temp' configuration.
E.g.:
Set-PSFConfig "psutil.path.temp" "D:\temp\_Dump"

If this configuration is not set, it will check the following locations and return the first one found:
C:\Temp
D:\Temp
E:\Temp
C:\Service
$env:temp

## Examples

### EXAMPLE 1

```powershell
Invoke-PSUTemp
```

Moves to the temporary directory.

## Parameters

### Get

Alias: g
Rather than move to the directory, return its path.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- g
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


