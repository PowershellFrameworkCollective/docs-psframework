---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFLoggingProvider
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFLoggingProvider
---

# Get-PSFLoggingProvider

## Synopsis

Returns a list of the registered logging providers.

## Syntax

### __AllParameterSets

```
Get-PSFLoggingProvider [[-Name] <string>] [<CommonParameters>]
```

## Description

Returns a list of the registered logging providers.
Those are used to log messages to whatever system they are designed to log to.

PSFramework ships with a few default logging providers.
Custom logging destinations can be created by implementing your own, custom provider and registering it using Register-PSFLoggingProvider.

## Examples

### EXAMPLE 1

```powershell
Get-PSFLoggingProvider
```

Returns all logging provider

### EXAMPLE 2

```powershell
Get-PSFLoggingProvider -Name filesystem
```

Returns the filesystem provider

## Parameters

### Name

Default: '*'
The name to filter by

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases:
- Provider
- ProviderName
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


