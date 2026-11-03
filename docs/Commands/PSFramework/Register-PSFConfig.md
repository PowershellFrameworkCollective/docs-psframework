---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFConfig
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFConfig
---

# Register-PSFConfig

## Synopsis

Registers an existing configuration object in registry.

## Syntax

### Default

```
Register-PSFConfig [[-Config] <Config[]>] [[-FullName] <string[]>] [-Scope <ConfigScope>]
 [-EnableException] [<CommonParameters>]
```

### Name

```
Register-PSFConfig [-Module] <string> [[-Name] <string>] [-Scope <ConfigScope>] [-EnableException]
 [<CommonParameters>]
```

## Description

Registers an existing configuration object in registry.
This allows simple persisting of settings across powershell consoles.
It also can be used to generate a registry template, which can then be used to create policies.

## Examples

### EXAMPLE 1

```powershell
Get-PSFConfig psframework.message.* | Register-PSFConfig
```

Retrieves all configuration items that that start with psframework.message.
and registers them in registry for the current user.

### EXAMPLE 2

```powershell
Register-PSFConfig -FullName "psframework.developer.mode.enable" -Scope SystemDefault
```

Retrieves the configuration item "psframework.developer.mode.enable" and registers it in registry as the default setting for all users on this machine.

### EXAMPLE 3

```powershell
Register-PSFConfig -Module MyModule -Scope SystemMandatory
```

Retrieves all configuration items of the module MyModule, then registers them in registry to enforce them for all users on the current system.

## Parameters

### Config

The configuration object to write to registry.
Can be retrieved using Get-PSFConfig.

```yaml
Type: PSFramework.Configuration.Config[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### EnableException

This parameters disables user-friendly warnings and enables the throwing of exceptions.
This is less user friendly, but allows catching exceptions in calling scripts.

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

### FullName

The full name of the setting to be written to registry.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Module

The name of the module, whose settings should be written to registry.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
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

Default: "*"
Used in conjunction with the -Module parameter to restrict the number of configuration items written to registry.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Scope

Default: UserDefault
Who will be affected by this export how? Current user or all? Default setting or enforced?
For more information on scopes and what location they correspond to, see:
https://psframework.org/documentation/documents/psframework/configuration/persistence-location.html

Environment variable scopes will only be persisted to the current process, affecting all child processes but not the computer in its entirety.

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


