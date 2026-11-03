---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Clear-PSFMessage
---

# Clear-PSFMessage

## Synopsis

Clears the in-memory log of the message system, or the inmemory logs by the inmemory Logging Provider.

## Syntax

### __AllParameterSets

```
Clear-PSFMessage [[-LogName] <string>] [<CommonParameters>]
```

## Description

Clears the in-memory log of the message system, or the inmemory logs by the inmemory Logging Provider.
Has no effect on written logfiles, table entries, eventlog logs or wherever else you may be logging.

Defaults to the message system memory log unless specified.

## Examples

### EXAMPLE 1

```powershell
Clear-PSFMessage
```

Clears the in-memory log of the message system.

### EXAMPLE 2

```powershell
Clear-PSFMessage -LogName user-mgmt-log-max
```

Clears all in-memory logs of the 'user-mgmt-log-max' inmemory Logging Provider

## Parameters

### LogName

The name of the inmemory log to clear.
Maps to the InstanceName of the inmemory Logging Provider.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
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


