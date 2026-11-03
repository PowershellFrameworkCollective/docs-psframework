---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSUDesktop
---

# Invoke-PSUDesktop

## Synopsis

Function that sets the current console path to the user desktop.

## Syntax

### __AllParameterSets

```
Invoke-PSUDesktop [[-User] <string>] [-Get] [<CommonParameters>]
```

## Description

Function that sets the current console path to the user desktop.
Uses the current user's desktop by default, but can be set to the desktop of any locally available profile.

## Examples

### EXAMPLE 1

```powershell
Desktop
```

Sets the current location to the desktop path of the current user.

## Parameters

### Get

Alias: g
Returns the path, rather than changing the location

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

### User

Alias: u
Choose which user's desktop path to move to.
Must be available as a local profile for things to work out.

```yaml
Type: System.String
DefaultValue: $env:USERNAME
SupportsWildcards: false
Aliases:
- u
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


