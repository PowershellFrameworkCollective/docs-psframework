---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Set-PSFLoggingProvider
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFLoggingProvider
---

# Set-PSFLoggingProvider

## Synopsis

Configures a logging provider.

## Syntax

### ByName

```
Set-PSFLoggingProvider -Name <string> [-InstanceName <string>] [-Enabled <bool>]
 [-IncludeModules <string[]>] [-ExcludeModules <string[]>] [-IncludeFunctions <string[]>]
 [-ExcludeFunctions <string[]>] [-IncludeRunspaces <guid[]>] [-ExcludeRunspaces <guid[]>]
 [-IncludeTags <string[]>] [-ExcludeTags <string[]>] [-MinLevel <int>] [-MaxLevel <int>]
 [-RequiresInclude] [-ExcludeWarning] [-ExcludeError] [-Wait] [-EnableException]
 [<CommonParameters>]
```

### ByConfig

```
Set-PSFLoggingProvider -Config <Object[]> [-Wait] [-EnableException] [<CommonParameters>]
```

## Description

This command allows configuring the way a logging provider works.
This grants the ability to ...
- Enable / Disable a provider
- Set additional parameters defined by the provider (each provider may implement its own settings, exposed through dynamic parameters)
- Configure filters about what messages get sent to a given provider.

## Examples

### EXAMPLE 1

```powershell
Set-PSFLoggingProvider -Name filesystem -Enabled $false
```

Disables the filesystem provider.

### EXAMPLE 2

```powershell
Set-PSFLoggingProvider -Name filesystem -ExcludeModules "PSFramework"
```

Prevents all messages from the PSFramework module to be logged to the file system

### EXAMPLE 3

```powershell
$config = @(
>>     @{ Name = 'logfile'; MaxLevel = 3; FilePath = 'C:\Logs\MyScript\Task-%date%.csv' }
>>     @{ Name = 'eventlog'; ExcludeModules = 'PSFramework'; MaxLevel = 5; LogName = 'Contoso'; Source = 'MyTask' }
>> )
PS C:\> Set-PSFLoggingProvider -Config $config -Wait
```

Applies mixed provider configurations (logfile + eventlog) in sequence using configuration objects.

## Parameters

### Config

One or more configuration objects to apply.
Each entry must provide the provider Name and may include any other supported settings,
such as Enabled, InstanceName, filtering rules, or provider-specific dynamic parameters.
When Enabled is omitted, it defaults to $true.

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

### Enabled

Whether the provider should be enabled or disabled.

```yaml
Type: System.Boolean
DefaultValue: False
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

### ExcludeError

Whether to exclude errors from the logging provider / instance.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### ExcludeFunctions

Messages from functions that match at least one entry noted here will NOT be logged.
Uses wildcard expressions.

```yaml
Type: System.String[]
DefaultValue: ''
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

### ExcludeModules

Messages from excluded modules will not be logged using this provider.
Overrides -IncludeModules in case of overlap.

```yaml
Type: System.String[]
DefaultValue: ''
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

### ExcludeRunspaces

Messages that come from one of the defined runspaces will NOT be logged.

```yaml
Type: System.Guid[]
DefaultValue: ''
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

### ExcludeTags

Messages containing any of the listed tags will not be logged.
Overrides -IncludeTags in case of overlap.

```yaml
Type: System.String[]
DefaultValue: ''
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

### ExcludeWarning

Whether to exclude warnings from the logging provider / instance.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### IncludeFunctions

Only messages from functions that match at least one entry noted here will be logged.
Uses wildcard expressions.

```yaml
Type: System.String[]
DefaultValue: ''
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

### IncludeModules

Only messages from modules listed here will be logged.
Exact match only, an empty list results in all modules being logged.

```yaml
Type: System.String[]
DefaultValue: ''
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

### IncludeRunspaces

Only messages that come from one of the defined runspaces will be logged.

```yaml
Type: System.Guid[]
DefaultValue: ''
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

### IncludeTags

Only messages containing the listed tags will be logged.
Exact match only, only a single match is required for a message to qualify.

```yaml
Type: System.String[]
DefaultValue: ''
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

### InstanceName

A description of the InstanceName parameter.

```yaml
Type: System.String
DefaultValue: ''
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

### MaxLevel

The maximum level of a message that will be logged.
Note: The lower the message level, the MORE important it is.
Levels range from 1 through 9:
- InternalComment: 9
- Debug: 8
- Verbose: 5
- Host: 2
- Critical: 1
The level "Warning" is not represented on this scale.

```yaml
Type: System.Int32
DefaultValue: 0
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

### MinLevel

The minimum level of a message that will be logged.
Note: The lower the message level, the MORE important it is.
Levels range from 1 through 9:
- InternalComment: 9
- Debug: 8
- Verbose: 5
- Host: 2
- Critical: 1
The level "Warning" is not represented on this scale.

```yaml
Type: System.Int32
DefaultValue: 0
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

### Name

The name of the provider to configure

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

### RequiresInclude

By default, messages will be written to a logging provider, unless a specific exclude rule was met or any include rule was not met.
That means, if no exclude and include rules exist at a given time, all messages will be written to the logging provider instance.
Setting this to true will instead require at least one include rule to exist - and be met - before logging a message.
This is designed for in particular for runspace-bound logging providers, which might at runtime swiftly gain or lose included runspaces.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### Wait

Whether to have the command wait until the provider instance is provisioned and ready to handle messages.
By default, the asynchroneous nature of the logging system my cause a slight delay, that in some instances could lead to missing the first few messages.
Enables the logging runspace if disabled, may timeout (30 seconds) in extreme-load situations caused by other runspaces.

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


