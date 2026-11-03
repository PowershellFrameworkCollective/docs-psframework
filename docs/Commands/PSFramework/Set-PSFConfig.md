---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: https://psframework.org/documentation/commands/PSFramework/Set-PSFConfig.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFConfig
---

# Set-PSFConfig

## Synopsis

Sets configuration entries.

## Syntax

### FullName

```
Set-PSFConfig [-FullName] <string> [[-Value] <Object>] [-Description <string>]
 [-Validation <string>] [-Handler <scriptblock>] [-Hidden] [-Default] [-Initialize] [-SimpleExport]
 [-ModuleExport] [-AllowDelete] [-DisableValidation] [-DisableHandler] [-PassThru]
 [-EnableException] [<CommonParameters>]
```

### Persisted

```
Set-PSFConfig [-FullName] <string> -PersistedValue <string>
 [-PersistedType <ConfigurationValueType>] [-Description <string>] [-Validation <string>]
 [-Handler <scriptblock>] [-Hidden] [-Default] [-Initialize] [-SimpleExport] [-ModuleExport]
 [-AllowDelete] [-DisableValidation] [-DisableHandler] [-PassThru] [-EnableException]
 [<CommonParameters>]
```

### Module

```
Set-PSFConfig [[-Module] <string>] [-Name] <string> [[-Value] <Object>] [-Description <string>]
 [-Validation <string>] [-Handler <scriptblock>] [-Hidden] [-Default] [-Initialize] [-SimpleExport]
 [-ModuleExport] [-AllowDelete] [-DisableValidation] [-DisableHandler] [-PassThru]
 [-EnableException] [<CommonParameters>]
```

## Description

This function creates or changes configuration values.
These can be used to provide dynamic configuration information outside the PowerShell variable system.

## Examples

### Simple

```powershell
C:\PS> Set-PSFConfig -FullName 'MyModule.User' -Value "Friedrich"
```

Creates or updates a configuration entry under the module "MyModule" named "User" with the value "Friedrich"

_

### Module Definition

```powershell
C:\PS> Set-PSFConfig -Name 'mymodule.User' -Value "Friedrich" -Description "The user under which the show must go on." -Handler $scriptBlock -Initialize -Validation String
```

Creates a configuration entry ...
- Named "mymodule.user"

- With the value "Friedrich"

- It adds a description as noted

- It registers the scriptblock stored in $scriptBlock as handler

- It initializes the script.

This block only executes the first time a it is run like this.
Subsequent calls will be ignored.
- It registers the basic string input type validator This is the default example for modules using the configuration system.
Note: While the -Handler parameter is optional, it is important to add it at the initial initialize call, if you are planning to add it.
Only then will the system validate previous settings (such as what a user might have placed in his user profile)

_

### Hiding things

```powershell
C:\PS> Set-PSFConfig 'Company' 'ConfigLink' 'https://www.example.com/config.xml' -Hidden
```

Creates a configuration entry named "ConfigLink" in the "Company" module with the value 'https://www.example.com/config.xml'.
This entry is hidden from casual discovery using Get-PSFConfig.

_

### Default Settings

```powershell
C:\PS> Set-PSFConfig -FullName 'Network.Firewall' -Value '10.0.0.2' -Default
```

Creates a configuration entry named "Firewall" in the "Network" module with the value '10.0.0.2' This is only set, if the setting does not exist yet.
If it does, this command will apply no changes.

## Parameters

### AllowDelete

By default, settings that have been once defined are considered unremovable.
Some workflows however require being able to fully dump configuration settings.
Enable this switch to make a configuration setting deletable.

Note:

- Settings that are initialized, can only be declared deletable during initialization.
Later attempts to change this, as well as previous settings will be ignored.

- Settings that are defined and enforced by policy cannot be deleted no matter what.

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

### Default

Setting this parameter causes the system to treat this configuration as a default setting.
If the configuration already exists, no changes will be performed.
Useful in scenarios where for some reason it is not practical to automatically set defaults before loading user profiles.

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

### Description

Using this, the configuration setting is given a description, making it easier for a user to comprehend, what a specific setting is for.

```yaml
Type: System.String
DefaultValue: None
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

### DisableHandler

This parameter disables the configuration handlers.
Configuration handlers are designed to automatically process input set to a config value, in addition to writing the value.
In many cases, this is used to improve performance, by forking the value location also to a static C#-field, which is then used, rather than searching a Hashtable.
Normally these shouldn't be circumvented, but just in case, it can be disabled.

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

### DisableValidation

This parameters disables the input validation - if any - when processing a setting.
Normally this shouldn't be circumvented, but just in case, it can be disabled.

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

### EnableException

Replaces user friendly yellow warnings with bloody red exceptions of doom! Use this if you want the function to throw terminating errors you want to catch.

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

The full name of a configuration element.
Must be namespaced <Module>.<Name>.
The name can have any number of sub-segments, in order to better group configurations thematically.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FullName
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Persisted
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Handler

A scriptblock that is executed when a value is being set.
Is only executed if the validation was successful (assuming there was a validation, of course)

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: None
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

### Hidden

Setting this parameter hides the configuration from casual discovery.
Configurations with this set will only be returned by Get-Config, if the parameter "-Force" is used.
This should be set for all system settings a user should have no business changing (e.g.
for Infrastructure related settings such as mail server).

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

### Initialize

Use this when setting configurations as part of module import.
When initializing a configuration, it will only do a thing if the configuration hasn't already been initialized (So if you load the module multiple times or in multiple runspaces, it won't make a difference) Also, if there already was a non-initialized setting set for a given configuration, it will then try to set the old value again.
This value will be processed by handlers, if any are set.

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

### Module

This allows grouping configuration elements into groups based on the module/component they serve.
If this parameter is not set, the configuration element must have a module name in the name parameter (the first segment will be taken, irrespective of whether that makes sense).

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ModuleExport

Using 'Export-PSFConfig -ModuleName <ModuleName>' settings flagged with this switch will be exported to a default path if they have been changed from the initial default value.

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

Name of the configuration entry.
If an entry of exactly this non-casesensitive name already exists, its value will be overwritten.
Duplicate names across different modules are possible and will be treated separately.
If a name contains namespace notation and no module is set, the first namespace element will be used as module instead of name.
Example: -Name "Nordwind.Server" Is Equivalent to -Name "Server" -Module "Nordwind"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PassThru

Return the changed configuration setting object.

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

### PersistedType

In most circumstances an internal parameter.
Paired with PersistedValue, used to specify the data type of the serialized object set in its serialized state.

```yaml
Type: PSFramework.Configuration.ConfigurationValueType
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Persisted
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PersistedValue

In most circumstances an internal parameter.
Applies the serialized value to a setting.
Used for restoring data from configuration files that should only be deserialized when the module consuming it is already imported.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Persisted
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### SimpleExport

Enabling this will cause the module to use friendly json notation on export to file.
This may result in loss of data precision, but makes it easier to edit settings in file.

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

### Validation

The name of the validation script used for input validation.
These can be used to validate make sure that input is of the proper data type.
New validation scripts can be registered using Register-PSFConfigValidation

```yaml
Type: System.String
DefaultValue: None
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

### Value

The value to assign to the named configuration element.

```yaml
Type: System.Object
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FullName
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Module
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Notes




## Links

Microsoft.PowerShell.PlatyPS.Model.Links


