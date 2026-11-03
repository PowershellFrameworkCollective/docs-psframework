---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFCallback
---

# Register-PSFCallback

## Synopsis

Registers a scriptblock to execute when a command calls Invoke-PSFCallback.

## Syntax

### __AllParameterSets

```
Register-PSFCallback [-Name] <string> [-ModuleName] <string> [-CommandName] <string>
 [-ScriptBlock] <scriptblock> [[-Scope] <string>] [-BreakAffinity] [<CommonParameters>]
```

## Description

Registers a scriptblock to execute when a command calls Invoke-PSFCallback.
The basic concept of this feature is for a module to offer a registration point,
where foreign modules - even those unknown to the implementing module - can register
scriptblocks as delegates.
These will then be executed in the implementing module's commands,
where those call Invoke-PSFCallback.

When designing a callback, keep in mind, that it will be executed on all applicable commmands.
A major aspect to consider here is the execution time, as this will get added on top of each applicable execution.

## Examples

### EXAMPLE 1

```powershell
Register-PSFCallback -Name 'MyModule.Configuration' -ModuleName 'DomainManagement' -CommandName '*' -ScriptBlock $ScriptBlock
```

Defines a callback named 'MyModule.Configuration'.
This callback scriptblock will be triggered from all commands of the DomainManagement module,
however only from the current runspace.

## Parameters

### BreakAffinity

By default, the callback scriptblock is being executed in the runspace that defined it.
Setting this parameter, the callback scriptblock is instead being executed in whatever
runspace it is being triggered from.

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
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommandName

Name of the command calling Invoke-PSFCallback.
Allows wildcard matching.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ModuleName

The name of the module from which Invoke-PSFCallback is being called.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the callback.
Must be unique.

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
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Scope

Whether the callback script is valid in this runspace only (default) or process-wide.

```yaml
Type: System.String
DefaultValue: CurrentRunspace
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ScriptBlock

The scriptblock to execute as callback action.
This scriptblock will receive a single argument: A hashtable.
That hashtable will contain the following keys:
- Command:        Name of the command calling Invoke-PSFCallback
- ModuleName:     Name of the module the command calling Invoke-PSFCallback is part of.
- CallerFunction: Name of the command calling the command calling Invoke-PSFCallback
- CallerModule:   Name of the module of the command calling the command calling Invoke-PSFCallback
- Data:           Additional data specified by the command calling Invoke-PSFCallback

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


