---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Unregister-PSFConfig
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Unregister-PSFConfig
---

# Unregister-PSFConfig

## Synopsis

Removes registered configuration settings.

## Syntax

### Pipeline

```
Unregister-PSFConfig [-ConfigurationItem <Config[]>] [-PersistedItem <PersistedConfig[]>]
 [-FullName <string[]>] [-Scope <ConfigScope>] [<CommonParameters>]
```

### Module

```
Unregister-PSFConfig -Module <string> [-Name <string>] [-Scope <ConfigScope>] [<CommonParameters>]
```

## Description

Removes registered configuration settings.
This function can be used to remove settings that have been persisted for either user or computer.
It can also remove persisted settings provided via Environment variable, but only for the current process (so new child-processes will no longer inherit them)

Note: This command has no effect on configuration settings currently in memory.

## Examples

### EXAMPLE 1

```powershell
Get-PSFConfig | Unregister-PSFConfig
```

Completely removes all registered configurations currently loaded in memory.
In most cases, this will mean removing all registered configurations.

### EXAMPLE 2

```powershell
Unregister-PSFConfig -Scope SystemDefault -FullName 'MyModule.Path.DefaultExport'
```

Unregisters the setting 'MyModule.Path.DefaultExport' from the list of computer-wide defaults.
Note: Changing system wide settings requires running the console with elevation.

### EXAMPLE 3

```powershell
Unregister-PSFConfig -Module MyModule
```

Unregisters all configuration settings for the module MyModule.

## Parameters

### ConfigurationItem

A configuration object as returned by Get-PSFConfig.

```yaml
Type: PSFramework.Configuration.Config[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Pipeline
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### FullName

The full name of the configuration setting to purge.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Pipeline
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Module

The module, amongst which settings should be unregistered.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the setting to unregister.
For use together with the module parameter, to limit the amount of settings that are unregistered.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PersistedItem

A configuration object as returned by Get-PSFConfig -Persisted.
Objects provided this way ignore the Scope parameter - they are unregistered from where they were found.

```yaml
Type: PSFramework.Configuration.PersistedConfig[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Pipeline
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Scope

Settings can be set to either default or enforced, for user or the entire computer.
They can also be persisted via files under appdata, localappdata or programmdata.
https://psframework.org/documentation/documents/psframework/configuration/persistence-location.html

By default, only DefaultSettings for the user are unregistered.
Use this parameter to choose the actual scope for the command to process.

```yaml
Type: PSFramework.Configuration.ConfigScope
DefaultValue: UserDefault
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


