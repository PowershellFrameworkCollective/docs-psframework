---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFTaskEngineTask
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFTaskEngineTask
---

# Register-PSFTaskEngineTask

## Synopsis

Allows scheduling PowerShell tasks, that are perfomed in the background.

## Syntax

### Once

```
Register-PSFTaskEngineTask -Name <string> -ScriptBlock <scriptblock> -Once [-Description <string>]
 [-Delay <TimeSpanParameter>] [-Priority <Priority>] [-ArgumentList <Object>] [-ResetTask]
 [-EnableException] [<CommonParameters>]
```

### Repeating

```
Register-PSFTaskEngineTask -Name <string> -ScriptBlock <scriptblock> -Interval <TimeSpanParameter>
 [-Description <string>] [-Delay <TimeSpanParameter>] [-Priority <Priority>]
 [-ArgumentList <Object>] [-ResetTask] [-EnableException] [<CommonParameters>]
```

## Description

Allows scheduling PowerShell tasks, that are perfomed in the background.

All scriptblocks scheduled like this will be performed on a separate runspace.
None of the scriptblocks will affect the main session (so you cannot manipulate variables, etc.)

This system is designed for two use-cases:
- Reducing module import time by off-loading expensive one-time actions (such as building a cache) in the background
- Scheduling periodic script executions that should occur while the process is running (e.g.: continuous maintenance, cache updates, ...)

It also avoids overloading the client computer by executing too many tasks at the same time, as multiple modules running code in the background might.
Instead tasks that are due simultaneously are processed by priority.

## Examples

### EXAMPLE 1

```powershell
Register-PSFTaskEngineTask -Name 'mymodule.buildcache' -ScriptBlock $ScriptBlock -Once -Description 'Builds the object cache used by the mymodule module'
```

Registers the task contained in $ScriptBlock under the name 'mymodule.buildcache' to execute once at the system's earliest convenience in a medium (default) priority.

### EXAMPLE 2

```powershell
Register-PSFTaskEngineTask -Name 'mymodule.maintenance' -ScriptBlock $ScriptBlock -Interval "00:05:00" -Delay "00:01:00" -Priority Critical -Description 'Performs critical system maintenance in order for the mymodule module to function'
```

Registers the task contained in $ScriptBlock under the name 'mymodule.maintenance'
- Sets it to execute every 5 minutes
- Sets it to wait for 1 minute after registration before starting the first execution
- Sets it to priority "Critical", ensuring it takes precedence over most other tasks.

## Parameters

### ArgumentList

Arguments to provide when executing the task.

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

### Delay

How far after the initial registration should the task script wait before processing this.
This can be used to delay background stuff that should not content with items that would be good to have as part of the module import.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
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

### Description

Description of the task.
Helps documenting the task and what it is supposed to be doing.

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

### Interval

The interval at which the task should be repeated.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Repeating
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

The name of the task.
Must be unique, otherwise it will update the existing task.

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

### Once

Whether the task should be performed only once.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Once
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Priority

How important is this task?
If multiple tasks are due at the same maintenance cycle, the more critical one will be processed first.

```yaml
Type: PSFramework.TaskEngine.Priority
DefaultValue: Medium
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

### ResetTask

If the task already exists, it will be reset by setting this parameter (this switch is ignored when creating new tasks).
This allows explicitly registering tasks for re-execution, even though they were set to execute once only.

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

### ScriptBlock

The task/scriptblock that should be performed as a background task.

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


