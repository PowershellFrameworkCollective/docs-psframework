---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSFProtectedCommand
---

# Invoke-PSFProtectedCommand

## Synopsis

Combines should process, try/catch error handling and logging in one package.

## Syntax

### Message

```
Invoke-PSFProtectedCommand -ScriptBlock <scriptblock> -Action <string> [-Target <Object>]
 [-EnableException <bool>] [-PSCmdlet <PSCmdlet>] [-Continue] [-ContinueLabel <string>]
 [-Tag <string[]>] [-RetryCount <int>] [-RetryWait <TimeSpanParameter>]
 [-RetryWaitEscalation <double>] [-RetryErrorType <string[]>] [-RetryCondition <scriptblock>]
 [-ErrorEvent <scriptblock>] [-Level <MessageLevel>] [-NonTerminating] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### String

```
Invoke-PSFProtectedCommand -ScriptBlock <scriptblock> -ActionString <string>
 [-ActionStringValues <Object[]>] [-Target <Object>] [-EnableException <bool>]
 [-PSCmdlet <PSCmdlet>] [-Continue] [-ContinueLabel <string>] [-Tag <string[]>] [-RetryCount <int>]
 [-RetryWait <TimeSpanParameter>] [-RetryWaitEscalation <double>] [-RetryErrorType <string[]>]
 [-RetryCondition <scriptblock>] [-ErrorEvent <scriptblock>] [-Level <MessageLevel>]
 [-NonTerminating] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

This command is designed to do away with the script code overhead of:

- Prompting for ShouldProcess if needed

- Including try/catch error handling for the purpose of the PSFramework opt-in exceptions concept

- Logging execution

As such it is intended to help produce more readable code in less time.

It also adds the ability to retry a failed action a specified number of times, at a static or escalating interval.

Note: This command can only be used from an advanced function unless specifying the -PSCmdlet parameter.

## Examples

### Example 1 : Killing with maximum prejudice

```powershell
PS C:\> Invoke-PSFProtectedCommand -Action "Doing Something" -Target $computer -ScriptBlock {
    Get-Something -ComputerName $computer -ErrorAction Stop
} -EnableException $true
```

Invokes the specified scriptblock, honoring ShouldProcess, logging execution and potential failure.
Failure will lead to a terminating exception.

_

### Example 2 : Killing it softly

```powershell
PS C:\> Invoke-PSFProtectedCommand -Action "Doing Something" -Target $computer -ScriptBlock {
    Get-Something -ComputerName $computer -ErrorAction Stop
}
PS C:\> if (Test-PSFFunctionInterrupt) { return }
```

Invokes the specified scriptblock, honoring ShouldProcess, logging execution and potential failure.
Failure will lead to a warning with the command terminating silently, unless the calling command's module opted into inheriting the '-EnableException' parameter (in which case the caller of the command calling Invoke-PSFProtectedCommand gets to pick whether this is throwing an exception or not)

_

### Example 3 : Try again

```powershell
Invoke-PSFProtectedCommand -Action Delete -Target $Path -ScriptBlock {
    Remove-Item -Path $Path -Recurse -Force -Confirm:$false -ErrorAction Stop
} -PSCmdlet $PSCmdlet -EnableException $EnableException -Continue -RetryCount 3 -RetryWait 2s
```

Will try to delete the resource specified in $Path.
It will keep trying to do that every 2s until it failed four times (Once plus the specified 3 retries).

_

### Example 4 : Try again ... sometimes

```powershell
Invoke-PSFProtectedCommand -Action Delete -Target $Path -ScriptBlock {
    Remove-Item -Path $Path -Recurse -Force -Confirm:$false -ErrorAction Stop
} -PSCmdlet $PSCmdlet -EnableException $EnableException -Continue -RetryCount 3 -RetryErrorType 'System.Management.Automation.ItemNotFoundException'
```

Will try to delete the resource specified in $Path.
It will keep trying to do that until it failed four times (Once plus the specified 3 retries).
Retries will only happen, if the error of the failure was of the type 'System.Management.Automation.ItemNotFoundException'.

## Parameters

### Action

The action that will be performed on the target.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Message
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ActionString

Localized string of the action that will be performed on the target.
Omit the modulename in the string.
For more details on the PSFramework localization feature, see the help on Import-PSFLocalizedString.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: String
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ActionStringValues

Specify values to format into the localization string specified.
For more details on the PSFramework localization feature, see the help on Import-PSFLocalizedString.

```yaml
Type: System.Object[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: String
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Confirm

If this switch is enabled, you will be prompted for confirmation before executing any operations that change state.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- cf
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

### Continue

When execution fails, unless exceptions where opted into, this command will call continue, moving on with the next item to process.

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

### ContinueLabel

When used together with -Continue, this allows you to pick the loop to continue with.

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

### EnableException

This parameters disables user-friendly warnings and enables the throwing of exceptions.
This is less user friendly, but allows catching exceptions in calling scripts.

```yaml
Type: System.Boolean
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

### ErrorEvent

Scriptblock that should be executed in case of failure.
$_ will be the error that happened.

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

### Level

At what level should verbose messages be written.
Defaults to SomewhatVerbose.

```yaml
Type: PSFramework.Message.MessageLevel
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

### NonTerminating

Make the final error generated a nonterminating error, if the wrapped command fails.
By default, exceptions generated will be terminating instead.

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

### PSCmdlet

This command will automatically pick up the $PSCmdlet variable of its caller.
Use this parameter to override this and specify what $PSCmdlet variable to use.
The $PSCmdlet variable will be used for terminating exceptions.

```yaml
Type: System.Management.Automation.PSCmdlet
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

### RetryCondition

Only when this scriptblock returns $true will it try again.
The script receives two input items:

- $_ : The exception (not error record) thrown

- $args[0] : The Target object specified in the -Target parameter

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

### RetryCount

How many times the command should attempt to try an action again, before giving up.

```yaml
Type: System.Int32
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

### RetryErrorType

When using -RetryCount to attempt a failed action again, this is a bit unspecific.
Often we want to retry to deal with specific scenarios ...
with specific errors.
Using this parameter, it becomes possible to specify just what exception types can only trigger a retry attempt.

Note: Exceptions of type ActionPreferenceStopException will be unwrapped to the original exception BEFORE performing the comparison.

```yaml
Type: System.String[]
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

### RetryWait

The interval the command will wait between failed attempts.
Defaults to 5 seconds.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
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

### RetryWaitEscalation

When retrying failed attempts, the previous wait time is multiplied by this value.
This allows waiting longer and longer periods, each time it failed.
Defaults to 1.

```yaml
Type: System.Double
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

### ScriptBlock

The actual scriptblock to execute.
Make sure any errors you want to trigger failure are terminating.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: None
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

### Tag

What tags - if any - to include in all messages.

```yaml
Type: System.String[]
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

### Target

The target object to work against.

```yaml
Type: System.Object
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

### WhatIf

if this switch is enabled, no actions are performed but informational messages will be displayed that explain what would happen if the command were to run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- wi
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

## Notes





