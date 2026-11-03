---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFLoggingProvider
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFLoggingProviderInstance
---

# Get-PSFLoggingProviderInstance

## Synopsis

Returns a list of the enabled logging provider instances.

## Syntax

### __AllParameterSets

```
Get-PSFLoggingProviderInstance [[-ProviderName] <string>] [[-Name] <string>] [-Force]
 [<CommonParameters>]
```

## Description

Returns a list of the enabled logging provider instances.
Those are used to log messages to whatever system they are designed to log to.

PSFramework ships with a few default logging providers.
Custom logging destinations can be created by implementing your own, custom provider and registering it using Register-PSFLoggingProvider.

## Examples

### EXAMPLE 1

```powershell
Get-PSFLoggingProviderInstance
```

Returns all enabled logging provider instances.

### EXAMPLE 2

```powershell
Get-PSFLoggingProviderInstance -ProviderName logfile -Force
```

Returns all logging provider instances - enabled or not - of the logfile provider

## Parameters

### Force

Enables returning disabled instances.

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

Default: '*'
The name of the instance to filter by.

```yaml
Type: System.String
DefaultValue: '*'
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

### ProviderName

Default: '*'
The name of the provider the instance is an instance of.

```yaml
Type: System.String
DefaultValue: '*'
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


