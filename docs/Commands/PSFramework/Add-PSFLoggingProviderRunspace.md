---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Add-PSFLoggingProviderRunspace
---

# Add-PSFLoggingProviderRunspace

## Synopsis

Adds a runspace to the list of dynamically included runspaces of an active logging provider instance.

## Syntax

### __AllParameterSets

```
Add-PSFLoggingProviderRunspace [-ProviderName] <string> [[-InstanceName] <string>]
 [[-Runspace] <guid>] [<CommonParameters>]
```

## Description

Adds a runspace to the list of dynamically included runspaces of an active logging provider instance.
This is designed to allow runspaces to add themselves "on the fly" to a specific logging provider.

Consider this scenario:
You have a large workload you spread across many runspaces.
However, each workload item might perform one out of three different categories of tasks.
You want each of these categories to log into a dedicated logfile and have prepared a provider for each.
Set each such logging instance as "-RequiresInclude" so by default nothing gets logged to any of them.
Then each workload item can call this command to add itself to the correct logging provider instance.

When done, call "Remove-PSFLoggingProviderRunspace" to remove that runspace correctly from the instance.
When using runspaces with a runspace pool, runspaces might be recycled for workitems of other categories, so cleaning it up is a useful habit.

Note:
This call will fail if the instance has not been created yet!
After setting up the logging provider instance using Set-PSFLoggingProvider, a short delay may occur before the instance is created.
With the default configuration, this delay should be no worse than 6 seconds and generally a lot less.
You can use "Get-PSFLoggingProviderInstance -ProviderName <providername> -Name <instancename>" to check whether it has been created.

## Examples

### EXAMPLE 1

```powershell
Add-PSFLoggingProviderRunspace -ProviderName 'logfile' -InstanceName UpdateTask
```

Adds the current runspace to the list of included runspaces on the logfile instance "UpdateTask".

## Parameters

### InstanceName

Name of the logging provider instance to target.
Default: "default"  (the instance created when you omit the instancename parameter on Set-PSFLoggingProvider)

```yaml
Type: System.String
DefaultValue: default
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

Name of the logging provider the instance is part of.

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

### Runspace

The Runspace ID of the runspace to add.
Defaults to the current runspace.

```yaml
Type: System.Guid
DefaultValue: '[System.Management.Automation.Runspaces.Runspace]::DefaultRunspace.InstanceId'
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


