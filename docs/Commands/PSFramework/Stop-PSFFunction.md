---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Stop-PSFFunction
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Stop-PSFFunction
---

# Stop-PSFFunction

## Synopsis

Function that interrupts a function.

## Syntax

### Message

```
Stop-PSFFunction -Message <string> [-EnableException <bool>] [-Category <ErrorCategory>]
 [-ErrorRecord <ErrorRecord[]>] [-Tag <string[]>] [-FunctionName <string>] [-ModuleName <string>]
 [-File <string>] [-Line <int>] [-Exception <Exception>] [-OverrideExceptionMessage]
 [-Target <Object>] [-AlwaysWarning] [-Continue] [-SilentlyContinue] [-ContinueLabel <string>]
 [-Cmdlet <PSCmdlet>] [-StepsUpward <int>] [-Level <MessageLevel>] [<CommonParameters>]
```

### String

```
Stop-PSFFunction -String <string> [-StringValues <Object[]>] [-EnableException <bool>]
 [-Category <ErrorCategory>] [-ErrorRecord <ErrorRecord[]>] [-Tag <string[]>]
 [-FunctionName <string>] [-ModuleName <string>] [-File <string>] [-Line <int>]
 [-Exception <Exception>] [-OverrideExceptionMessage] [-Target <Object>] [-AlwaysWarning]
 [-Continue] [-SilentlyContinue] [-ContinueLabel <string>] [-Cmdlet <PSCmdlet>] [-StepsUpward <int>]
 [-Level <MessageLevel>] [<CommonParameters>]
```

## Description

Function that interrupts a function.

This function is a utility function used by other functions to reduce error catching overhead.
It is designed to allow gracefully terminating a function with a warning by default and also allow opt-in into terminating errors.
It also allows simple integration into loops.

Note:
When calling this function with the intent to terminate the calling function in non-ExceptionEnabled mode too, you need to add a return below the call.

For a more detailed explanation - including commented full-scale implementation examples - see the associated help article:
Get-Help about_psf_flowcontrol

## Examples

### EXAMPLE 1

```powershell
Stop-PSFFunction -Message "Foo failed bar!" -EnableException $EnableException -ErrorRecord $_
return
```

Depending on whether $EnableException is true or false it will:
- Throw a bloody terminating error.
Game over.
- Write a nice warning about how Foo failed bar, then terminate the function.
The return on the next line will then end the calling function.

### EXAMPLE 2

```powershell
Stop-PSFFunction -Message "Foo failed bar!" -EnableException $EnableException -Category InvalidOperation -Target $foo -Continue
```

Depending on whether $EnableException is true or false it will:
- Throw a bloody terminating error.
Game over.
- Write a nice warning about how Foo failed bar, then call continue to process the next item in the loop.
In both cases, the error record added to $error will have the content of $foo added, the better to figure out what went wrong.

## Parameters

### AlwaysWarning

Ensures the command always writes a visible warning, no matter what.
by default, when -EnableException is set to $true it will hide the warning instead.
You can enable this to always be on for your module by setting the feature flag: PSFramework.Stop-PSFFunction.ShowWarning
For more information on feature flags, see "Get-Help Set-PSFFeature -Detailed"
Note: When changing the level of the message using the -Level parameter, this applies to the new level as well.

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

### Category

What category does this termination belong to?
Is automatically set when passing an error record.
Helps with differentiating exceptions without having to resort to text parsing.

```yaml
Type: System.Management.Automation.ErrorCategory
DefaultValue: NotSpecified
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

### Cmdlet

The $PSCmdlet object of the calling command.
Used to write exceptions in a more hidden manner, avoiding exposing internal script text in the default message display.

```yaml
Type: System.Management.Automation.PSCmdlet
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

### Continue

This will cause the function to call continue while not running with exceptions enabled (-EnableException).
Useful when mass-processing items where an error shouldn't break the loop.

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

When specifying a label in combination with "-Continue" or "-SilentlyContinue", this function will call continue with this specified label.
Helpful when trying to continue on an upper level named loop.

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

Replaces user friendly yellow warnings with bloody red exceptions of doom!
Use this if you want the function to throw terminating errors you want to catch.

```yaml
Type: System.Boolean
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

### ErrorRecord

An option to include an inner exception in the error record (and in the exception thrown, if one is thrown).
Use this, whenever you call Stop-PSFFunction in a catch block.

Note:
Pass the full error record, not just the exception.

```yaml
Type: System.Management.Automation.ErrorRecord[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- InnerErrorRecord
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

### Exception

Allows specifying an inner exception as input object.
This will be passed on to the logging and used for messages.
When specifying both ErrorRecord AND Exception, Exception wins, but ErrorRecord is still used for record metadata.

```yaml
Type: System.Exception
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

### File

The file in which Stop-PSFFunction was called.
Will be automatically set, but can be overridden when necessary.

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

### FunctionName

The name of the function to crash.
This parameter is very optional, since it automatically selects the name of the calling function.
The function name is used as part of the errorid.
That in turn allows easily figuring out, which exception belonged to which function when checking out the $error variable.

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

### Level

The level the associated message should be written at.
This affects the log entry as well as the visibility of the message (for example 'Verbose' would not be shown by default).
Defaults to: Warning
Possible levels: Critical (1), Important / Output / Host (2), Significant (3), VeryVerbose (4), Verbose (5), SomewhatVerbose (6), System (7), Debug (8), InternalComment (9), Warning (666), Error (667)

```yaml
Type: PSFramework.Message.MessageLevel
DefaultValue: Warning
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

### Line

The line on which Stop-PSFFunction was called.
Will be automatically set, but can be overridden when necessary.

```yaml
Type: System.Int32
DefaultValue: 0
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

### Message

A message to pass along, explaining just what the error was.

```yaml
Type: System.String
DefaultValue: ''
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

### ModuleName

The name of the module, the function to be crashed is part of.
This parameter is very optional, since it automatically selects the name of the calling function.

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

### OverrideExceptionMessage

Disables automatic appending of exception messages.
Use in cases where you already have a speaking message interpretation and do not need the original message.

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

### SilentlyContinue

This will cause the function to call continue while running with exceptions enabled (-EnableException).
Useful when mass-processing items where an error shouldn't break the loop.

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

### StepsUpward

When not throwing an exception and not calling continue, Stop-PSFFunction signals the calling command to stop.
In some cases you may want to signal a step or more further up the chain (notably from helper functions within a function).
This parameter allows you to add additional steps up the callstack that it will notify.

```yaml
Type: System.Int32
DefaultValue: 0
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

### String

A stored string to use to write the log.
Used in combination with the localization component.
For more details see the help on Import-PSFLocalizedString and Get-PSFLocalizedString.

```yaml
Type: System.String
DefaultValue: ''
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

### StringValues

Values to format into the localized string referred to in the -String parameter.

```yaml
Type: System.Object[]
DefaultValue: ''
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

### Tag

Tags to add to the message written.
This allows filtering and grouping by category of message, targeting specific messages.

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

The object that was processed when the error was thrown.
For example, if you were trying to process a Database Server object when the processing failed, add the object here.
This object will be in the error record (which will be written, even in non-silent mode, just won't show it).
If you specify such an object, it becomes simple to actually figure out, just where things failed at.

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


