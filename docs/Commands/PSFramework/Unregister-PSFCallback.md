---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Unregister-PSFCallback
---

# Unregister-PSFCallback

## Synopsis

Removes a callback from the list of registered callbacks.

## Syntax

### Name

```
Unregister-PSFCallback -Name <string[]> [<CommonParameters>]
```

### Object

```
Unregister-PSFCallback -Callback <Callback[]> [<CommonParameters>]
```

## Description

Removes a callback from the list of registered callbacks.

## Examples

### EXAMPLE 1

```powershell
Unregister-PSFCallback -Name 'MyModule.Configuration'
```

Unregisters the 'MyModule.Configuration' callback script.

### EXAMPLE 2

```powershell
Get-PSFCallback | Unregister-PSFCallback
```

Removes all callback scripts applicable to the current runspace.

## Parameters

### Callback

A full callback object to remove.
Use Get-PSFCallback to get the list of relevant callback objects.

```yaml
Type: PSFramework.FlowControl.Callback[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Object
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the callback to remove.
Does NOT support wildcards.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


