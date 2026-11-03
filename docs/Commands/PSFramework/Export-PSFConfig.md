---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Export-PSFConfig
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Export-PSFConfig
---

# Export-PSFConfig

## Synopsis

Exports configuration items to a Json file.

## Syntax

### FullName

```
Export-PSFConfig [-FullName] <string> [-OutPath] <string> [-SkipUnchanged] [-EnableException]
 [<CommonParameters>]
```

### Module

```
Export-PSFConfig [-Module] <string> [[-Name] <string>] [-OutPath] <string> [-SkipUnchanged]
 [-EnableException] [<CommonParameters>]
```

### Config

```
Export-PSFConfig [-Config] <Config[]> [-OutPath] <string> [-SkipUnchanged] [-EnableException]
 [<CommonParameters>]
```

### ModuleName

```
Export-PSFConfig -ModuleName <string> [-ModuleVersion <int>] [-Scope <ConfigScope>] [-SkipUnchanged]
 [-EnableException] [<CommonParameters>]
```

## Description

Exports configuration items to a Json file.

## Examples

### EXAMPLE 1

```powershell
Get-PSFConfig | Export-PSFConfig -OutPath '~/export.json'
```

Exports all current settings to json.

### EXAMPLE 2

```powershell
Export-PSFConfig -Module MyModule -OutPath '~/export.json' -SkipUnchanged
```

Exports all settings of the module 'MyModule' that are no longer the original default values to json.

## Parameters

### Config

The configuration object(s) to export.
Returned by Get-PSFConfig.

```yaml
Type: PSFramework.Configuration.Config[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Config
  Position: 0
  IsRequired: true
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

Select the configuration objects to export by filtering by their full name.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FullName
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Module

Select the configuration objects to export by filtering by their module name.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ModuleName

Exports all configuration pertinent to a module to a predefined path.
Exported configuration items include all settings marked as 'ModuleExport' that have been changed from the default value.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ModuleName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ModuleVersion

The configuration version of the module-settings to write.

```yaml
Type: System.Int32
DefaultValue: 1
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ModuleName
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

Select the configuration objects to export by filtering by their name.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### OutPath

The path (filename included) to export to.
Will fail if the folder does not exist, will overwrite the file if it exists.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: FullName
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Config
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Scope

Which predefined path to write module specific settings to.
Only file scopes are considered.
By default it writes to the suer profile.

```yaml
Type: PSFramework.Configuration.ConfigScope
DefaultValue: FileUserShared
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ModuleName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### SkipUnchanged

If set, configuration objects whose value was not changed from its original value will not be exported.
(Note: Settings that were updated with the same value as the original default will still be considered changed)

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


