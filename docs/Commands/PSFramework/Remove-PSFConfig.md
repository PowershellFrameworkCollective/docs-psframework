---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSFConfig
---

# Remove-PSFConfig

## Synopsis

Removes configuration items from memory.

## Syntax

### Default

```
Remove-PSFConfig [[-Config] <Config[]>] [[-FullName] <string[]>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Name

```
Remove-PSFConfig [-Module] <string> [[-Name] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

This command removes configuration items from memory.
However, not all settings can just be deleted!
A configuration item must be flagged as deletable.
This can be done using Set-PSFConfig -AllowDelete or Import-PSFConfig -AllowDelete.
Certain schema versions of configuration json may also support defining this in the file.

Limitations to flagging configuration as deletable:
> Once a configuration item has been initialized, its deletable status is frozen.
  The last time it is possible to change the deletable status is during initialization.
> A setting that has been set as mandated by policy cannot be removed.

Reason for this limit:
The configuration system is designed for multiple scenarios.
Deleting settings makes sense in some, while in others it is actually detrimental.
Initialization is especially designed for the module scenario, where the module's configuration is its options menu.
In this scenario, having a user deleting settings could lead to broken execution and unintended code paths, that might be at odds with policies defined.

## Examples

### EXAMPLE 1

```powershell
Remove-PSFConfig -FullName 'Phase1.Step1.Server' -Confirm:$false
```

Deletes the setting 'Phase1.Step1.Server' from memory, assuming it exists and supports deletion.

## Parameters

### Config

The configuration object to remove from memory.
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

### FullName

The full name of the setting to be removed from memory.

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

The name of the module, whose settings should be removed from memory.

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
Used in conjunction with the -Module parameter to restrict the number of configuration items deleted from memory.

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


