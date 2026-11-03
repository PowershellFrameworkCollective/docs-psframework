---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Disable-PSFLoggingProvider
---

# Disable-PSFLoggingProvider

## Synopsis

Disables the instance of a logging provider.

## Syntax

### ByName

```
Disable-PSFLoggingProvider -Name <string> [-InstanceName <string>] [-NoFinalizeWait]
 [<CommonParameters>]
```

### ByObject

```
Disable-PSFLoggingProvider -InstanceObject <ProviderInstance[]> [-NoFinalizeWait]
 [<CommonParameters>]
```

### ByConfig

```
Disable-PSFLoggingProvider -Config <Object[]> [-NoFinalizeWait] [<CommonParameters>]
```

## Description

Disables the instance of a logging provider.
This ensures all logs that apply to the logging provider are flushed and the closing events are properly released.
For example, this ensures logfiles are complete and no longer in access.

Only works for v2+ Logging Providers, as it addresses logging provider instances, not the provider itself.

## Examples

### EXAMPLE 1

```powershell
Disable-PSFLoggingProvider -Name logfile
```

Disables the default instance of the logfile provider, then waits until all applicable logs are processed
and the logfile is released.

### EXAMPLE 2

```powershell
Disable-PSFLoggingProvider -Name logfile -InstanceName mytask
```

Disables the "mytask" instance of the logfile provider, then waits until all applicable logs are processed
and the logfile is released.

### EXAMPLE 3

```powershell
Disable-PSFLoggingProvider -Name logfile -InstanceName mytask -NoFinalizeWait
```

Disables the "mytask" instance of the logfile provider, then waits until all applicable logs are processed
but not for the logfile to be released (which will happen soon after, in most cases).

### EXAMPLE 4

```powershell
Get-PSFLoggingProviderInstance | Disable-PSFLoggingProvider
```

Disables all active logging provider instances

### EXAMPLE 5

```powershell
Disable-PSFLoggingProvider -Config $config.Logging
```

Disables all logging provider instances defined in $config.Logging
This allows convenient logging configuration from a config file - it takes the same config data Set-PSFLoggingProvider accepts.

## Parameters

### Config

One or more configuration objects to disable.
Each entry must provide the provider Name and may include a specific InstanceName.
All other settings are ignored.

```yaml
Type: System.Object[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByConfig
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### InstanceName

Name of the instance of the logging provider to disable.
Defaults to: Default

```yaml
Type: System.String
DefaultValue: Default
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### InstanceObject

A full Logging Provider Instance object, as return by Get-PSFLoggingProviderInstance

```yaml
Type: PSFramework.Logging.ProviderInstance[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByObject
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

Name of the logging provider to disable.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Provider
- ProviderName
ParameterSets:
- Name: ByName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### NoFinalizeWait

Do not wait for the logging to conclude or the final events shutting down the provider instance to finish.
By default, this command waits for all aspects of shutting down a logging instance to complete.
Using this parameter is intended for situations where the powershell process continues and it is acceptable
to continue while the shutting down happens in the background.

Even with this parameter, all messages are flushed, so some waiting might be involved anyway,
based on just how many log messages are still waiting to be processed.

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


