---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSFLoggingProviderRunspace
---

# Remove-PSFLoggingProviderRunspace

## Synopsis

Removes a runspace from the list of dynamically included runspaces of an active logging provider instance.

## Syntax

### __AllParameterSets

```
Remove-PSFLoggingProviderRunspace [-ProviderName] <string> [[-InstanceName] <string>]
 [[-Runspace] <guid>] [<CommonParameters>]
```

## Description

Removes a runspace from the list of dynamically included runspaces of an active logging provider instance.
See the help on Add-PSFLoggingProviderRunspace for details on how and why this is desirable.

## Examples

### EXAMPLE 1

```powershell
Remove-PSFLoggingProviderRunspace -ProviderName 'logfile' -InstanceName UpdateTask
```

Removes the current runspace from the list of included runspaces on the logfile instance "UpdateTask".

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

The Runspace ID of the runspace to remove.
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


