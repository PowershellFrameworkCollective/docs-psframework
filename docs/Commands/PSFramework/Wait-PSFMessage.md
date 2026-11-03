---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Wait-PSFMessage
---

# Wait-PSFMessage

## Synopsis

Waits until the PSFramework log queue has been flushed.

## Syntax

### __AllParameterSets

```
Wait-PSFMessage [[-Timeout] <DateTimeParameter>] [-Terminate] [<CommonParameters>]
```

## Description

Waits until the PSFramework log queue has been flushed.
Also supports ending the logging runspace.

This is designed to explicitly handle script termination for tasks that run in custom hosts that do not properly fire runspace termination events, leading to infinitely hanging tasks.

## Examples

### EXAMPLE 1

```powershell
Wait-PSFMessage
```

Waits until all pending messages are logged.

### EXAMPLE 2

```powershell
Wait-PSFMessage -Timeout 1m -Terminate
```

Waits up to one minute for all messages to be flushed, then terminates the logging runspace

## Parameters

### Terminate

If this parameter is specified it will terminate the running logging runspace.
Use this if your script will run in a powershell host that does not properly execute termination events.
Danger!!!! Should never be used in a script that might be called by other scripts, as this might prematurely end logging!

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

### Timeout

Maximum duration for the command to wait until it terminates even if there are messages left.

```yaml
Type: PSFramework.Parameter.DateTimeParameter
DefaultValue: 5m
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


