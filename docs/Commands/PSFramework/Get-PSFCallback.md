---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFCallback
---

# Get-PSFCallback

## Synopsis

Returns a list of callback scripts.

## Syntax

### __AllParameterSets

```
Get-PSFCallback [[-Name] <string[]>] [-All] [<CommonParameters>]
```

## Description

Returns a list of callback scripts.
Use Register-PSFCallback to register new callback scripts.
Use Unregister-PSFCallback to remove callback scripts.
Use Invoke-PSFCallback within a function of your module to execute all registered callback scripts that apply.

## Examples

### EXAMPLE 1

```powershell
Get-PSFCallback
```

Returns all callback scripts relevant to the current runspace.

### EXAMPLE 2

```powershell
Get-PSFCallback -All
```

Returns all callback scripts in the entire process.

### EXAMPLE 3

```powershell
Get-PSFCallback -Name MyModule.Configuration
```

Returns the callback script named 'MyModule.Configuration'

## Parameters

### All

Return all callback scripts, even those specific to other runspaces.

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

### Name

The name to filter by.

```yaml
Type: System.String[]
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


