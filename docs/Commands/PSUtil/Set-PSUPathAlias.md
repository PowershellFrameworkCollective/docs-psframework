---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSUPathAlias
---

# Set-PSUPathAlias

## Synopsis

Used to create an an alias that sets your location to the path you specify.

## Syntax

### __AllParameterSets

```
Set-PSUPathAlias [-Alias] <string> [-Path] <string> [-Register] [-EnableException]
 [<CommonParameters>]
```

## Description

A detailed description of the Set-PSUPathAlias function.

## Examples

### EXAMPLE 1

```powershell
Set-PSUPathAlias -Alias 'work' -Path 'C:\work'
Creates an alias to Set-PSUPath that will set the location to 'c:\work'
```


### EXAMPLE 2

```powershell
Set-PSUPathAlias -Alias 'repos' -Path 'C:\repos' -Register
```

Creates an alias for repos and registers the setting so that it will persist between sessions.

## Parameters

### Alias

Name of the Alias that will be created for Set-PSUPath.
Set-PSU Path detects the alias that called it and then finds the corresponding PSFConfig entry for it.

```yaml
Type: System.String
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

This is the path that you want your location to change to when the alias is called.

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

### Register

Causes PSUtil to remember the alias across sessions.
For more advanced options, see Register-PSFConfig.

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


