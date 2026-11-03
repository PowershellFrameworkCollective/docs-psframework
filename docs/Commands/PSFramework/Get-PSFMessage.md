---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFMessage
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFMessage
---

# Get-PSFMessage

## Synopsis

Returns log entries for the PSFramework

## Syntax

### SelectDefault

```
Get-PSFMessage [-FunctionName <string>] [-ModuleName <string>] [-Target <Object>] [-Tag <string[]>]
 [-Last <int>] [-Skip <int>] [-Runspace <guid>] [-Level <MessageLevel[]>] [<CommonParameters>]
```

### SelectErrors

```
Get-PSFMessage -Errors [-FunctionName <string>] [-ModuleName <string>] [-Target <Object>]
 [-Tag <string[]>] [-Runspace <guid>] [-Level <MessageLevel[]>] [<CommonParameters>]
```

### SelectInMemoryLog

```
Get-PSFMessage -LogName <string> [-FunctionName <string>] [-ModuleName <string>] [-Target <Object>]
 [-Tag <string[]>] [-Runspace <guid>] [-Level <MessageLevel[]>] [-AsLog] [<CommonParameters>]
```

## Description

Returns log entries for the PSFramework.
Handy when debugging or developing a script using it.

## Examples

### EXAMPLE 1

```powershell
Get-PSFMessage
```

Returns all log entries currently in memory.

### EXAMPLE 2

```powershell
Get-PSFMessage -LogName group-cleanup
```


### EXAMPLE 3

```powershell
Get-PSFMessage -Target "a" -Last 1 -Skip 1
```

Returns all log entries that targeted the object "a" in the second last execution sent.

### EXAMPLE 4

```powershell
Get-PSFMessage -Tag "fail" -Last 5
```

Returns all log entries within the last 5 executions that contained the tag "fail"

## Parameters

### AsLog

Return the entire log object of the instance of the inmemory Logging Provider.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SelectInMemoryLog
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Errors

Instead of log entries, the error entries will be retrieved.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SelectErrors
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### FunctionName

Default: "*"
Only messages written by similar functions will be returned.

```yaml
Type: System.String
DefaultValue: '*'
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

### Last

Only messages written by the last X executions will be returned.
Uses Get-History to determine execution.
Ignores Get-PSFmessage commands.
By default, this will also include messages from other runspaces.
If your command executes in parallel, that's useful.
If it doesn't and you were offloading executions to other runspaces, consider also filtering by runspace using '-Runspace'

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SelectDefault
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Level

Limit the message selection by level.
Message levels have a numeric value, making it easier to select a range:

  -Level (1..6)

Will select the first 6 levels (Critical - SomewhatVerbose).

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

### LogName

Instead of the message system log, access logs from an instance of the inmemory Logging Provider.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SelectInMemoryLog
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ModuleName

Default: "*"
Only messages written by commands from similar modules will be returned.

```yaml
Type: System.String
DefaultValue: '*'
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

### Runspace

The guid of the runspace to return messages from.
By default, messages from all runspaces are returned.
Run the following line to see the list of guids:

Get-Runspace | ft Id, Name, InstanceId -Autosize

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

### Skip

How many executions to skip when specifying '-Last'.
Has no effect without the '-Last' parameter.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SelectDefault
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Tag

Only messages containing one of these tags will be returned.

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

### Target

Only messages handling the specified target will be returned.

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


