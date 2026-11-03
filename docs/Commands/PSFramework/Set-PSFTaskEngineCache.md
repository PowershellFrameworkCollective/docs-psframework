---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Set-PSFTaskEngineCache
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFTaskEngineCache
---

# Set-PSFTaskEngineCache

## Synopsis

Sets values and configuration for a cache entry.

## Syntax

### __AllParameterSets

```
Set-PSFTaskEngineCache [-Module] <string> [-Name] <string> [[-Value] <Object>]
 [[-Lifetime] <TimeSpanParameter>] [[-Collector] <scriptblock>] [[-CollectorArgument] <Object>]
 [<CommonParameters>]
```

## Description

Allows applying values and settings for a cache.
This allows applying a lifetime to cached data or offering a mechanism to automatically refresh it on retrieval.

This feature is specifically designed to interact with the Task Engine powershell task scheduler (See Register-PSFTaskEngineTask for details).
However it is open for interaction with all tools.
In particular, the cache is threadsafe to use through these functions.
The cache is global to the process, NOT the current runspace.
Background runspaces access the same data in a safe manner.

## Examples

### EXAMPLE 1

```powershell
Set-PSFTaskEngineCache -Module 'mymodule' -Name 'maintenancetask' -Value $results
```

Stores the content of $results in the cache 'mymodule / maintenancetask'
These values can now be retrieved using Get-PSFTaskEngineCache.

### EXAMPLE 2

```powershell
Set-PSFTaskEngineCache -Module MyModule -Name DomainController -Lifetime 8h -Collector { Get-ADDomainController }
```

Registers a cache that lists all domain controllers in the current domain, keeping the data valid for 8 hours before refreshing it.

## Parameters

### Collector

A scriptblock that is used to refresh the data cached.
Should return values in a save manner, will be called if retrieving data on a cache that has expired.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CollectorArgument

An argument to pass to the collector script.
Allows passing in values as argument to the collector script.
The arguments are stored persistently and are not subject to expiration.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Lifetime

How long values stored in this cache should remain valid.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Module

The name of the module that generated the task.
Use scriptname in case of using this within a script.

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

### Name

The name of the task for which the cache is.

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

### Value

The value to set this cache to.

```yaml
Type: System.Object
DefaultValue: ''
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


