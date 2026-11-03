---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFMessageEvent
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFMessageEvent
---

# Register-PSFMessageEvent

## Synopsis

Registers an event to when a message is written.

## Syntax

### __AllParameterSets

```
Register-PSFMessageEvent -Name <string> -ScriptBlock <scriptblock> [-MessageFilter <string>]
 [-ModuleNameFilter <string>] [-FunctionNameFilter <string>] [-TargetFilter <Object>]
 [-LevelFilter <MessageLevel[]>] [-TagFilter <string[]>] [-RunspaceFilter <guid>]
 [<CommonParameters>]
```

## Description

Registers an event to when a message is written.
These events will fire whenever the written message fulfills the specified filter criteria.

This allows integrating direct alerts and reactions to messages as they occur.

Warnings:
- Adding many subscriptions can impact overall performance, even without triggering.
- Events are executed synchronously.
executing complex operations may introduce a significant delay to the command execution.

It is recommended to push processing that involves outside resources to a separate runspace, then use the event to pass the object as trigger.
The TaskEngine component may prove to be just what is needed to accomplish this.

## Examples

### EXAMPLE 1

```powershell
Register-PSFMessageEvent -Name 'Mymodule.OffloadTrigger' -ScriptBlock $ScriptBlock -Tag 'engine' -Module 'MyModule' -Level Warning
```

Registers an event subscription ...
- Under the name 'Mymodule.OffloadTrigger' ...
- To execute $ScriptBlock ...
- Whenever a message is written with the tag 'engine' by the module 'MyModule' at the level 'Warning'

## Parameters

### FunctionNameFilter

Filter by Name of the function, from which the message comes.
Understands wildcards, but not regex.

```yaml
Type: System.String
DefaultValue: ''
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

### LevelFilter

Include only messages of the specified levels.

```yaml
Type: PSFramework.Message.MessageLevel[]
DefaultValue: ''
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

### MessageFilter

Filter by message content.
Understands wildcards, but not regex.

```yaml
Type: System.String
DefaultValue: ''
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

### ModuleNameFilter

Filter by Name of the module, from which the message comes.
Understands wildcards, but not regex.

```yaml
Type: System.String
DefaultValue: ''
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

The name of the subscription.
Each subscription must have a name, subscriptions of equal name will overwrite each other.
This is in order to avoid having runspace uses explode the number of subscriptions on each invocation.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### RunspaceFilter

Only include messages which were written by the specified runspace.
You can find out the current runspace ID by running this:
  [System.Management.Automation.Runspaces.Runspace]::DefaultRunspace.InstanceId
You can retrieve the primary runspace - the Guid used by the runspace the user sees - by running this:
  [PSFramework.Utility.UtilityHost]::PrimaryRunspace

```yaml
Type: System.Guid
DefaultValue: ''
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

### ScriptBlock

The scriptblock to execute.
It will receive the message entry (as returned by Get-PSFMessage) as its sole argument.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TagFilter

Only include messages with any of the specified tags.

```yaml
Type: System.String[]
DefaultValue: ''
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

### TargetFilter

Filter by target object.
Performs equality comparison on an object level.

```yaml
Type: System.Object
DefaultValue: ''
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


