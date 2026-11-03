---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Reset-PSFConfig
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Reset-PSFConfig
---

# Reset-PSFConfig

## Synopsis

Reverts a configuration item to its default value.

## Syntax

### Pipeline

```
Reset-PSFConfig [-ConfigurationItem <Config[]>] [-FullName <string[]>] [-EnableException] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Module

```
Reset-PSFConfig -Module <string> [-Name <string>] [-EnableException] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## Description

This command can be used to revert a configuration item to the value it was initialized with.
Generally, this amounts to reverting it to its default value.

In order for a reset to be possible, two conditions must be met:
- The setting must have been initialized.
- The setting cannot have been enforced by policy.

## Examples

### EXAMPLE 1

```powershell
Reset-PSFConfig -Module MyModule
```

Resets all configuration items of the MyModule to default.

### EXAMPLE 2

```powershell
Get-PSFConfig | Reset-PSFConfig
```

Resets ALL configuration items to default.

### EXAMPLE 3

```powershell
Reset-PSFConfig -FullName MyModule.Group.Setting1
```

Resets the configuration item named 'MyModule.Group.Setting1'.

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

### Confirm

If this switch is enabled, you will be prompted for confirmation before executing any operations that change state.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

The full name of the setting to reset, offering the maximum of precision.

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

The name of the module, from which configurations should be reset.
Used in conjunction with the -Name parameter to filter a specific set of items.

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

Used in conjunction with the -Module parameter to select which settings to reset using wildcard comparison.

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

### WhatIf

If this switch is enabled, no actions are performed but informational messages will be displayed that explain what would happen if the command were to run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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


