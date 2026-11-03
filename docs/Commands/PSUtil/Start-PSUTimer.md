---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Start-PSUTimer
---

# Start-PSUTimer

## Synopsis

Creates a timer that will alarm the user after it has expired.

## Syntax

### __AllParameterSets

```
Start-PSUTimer [-Duration] <DateTimeParameter> [-Message] <Object> [[-AlarmCount] <int>]
 [-NoProgress] [-AlarmInterval <int>] [-RandomInterval] [-MinFrequency <int>] [-MaxFrequency <int>]
 [-DisableScreensaver] [<CommonParameters>]
```

## Description

Creates a timer that will alarm the user after it has expired.
Provides both visual and sound warnings.
Also provides a progress bar with a time remaining display.

## Examples

### EXAMPLE 1

```powershell
timer 170 Tea
```

After 170 Duration give warning that the tea is ready.

## Parameters

### AlarmCount

How often to give warning.

```yaml
Type: System.Int32
DefaultValue: 25
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

### AlarmInterval

In what time interval to write warnings and send sound.

```yaml
Type: System.Int32
DefaultValue: 250
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

### DisableScreensaver

Disables the screensaver while the timer is pending.
This only works on Windows and has the command pretend to be a video & backup application, preventing untimely activation of a screensaver.

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

### Duration

The time to wait.

```yaml
Type: PSFramework.Parameter.DateTimeParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Seconds
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

### MaxFrequency

The maximum frequency of the beeps.
Must be at least one higher than MaxFrequency.
Increase delta to play random frequency sounds on each beep.

```yaml
Type: System.Int32
DefaultValue: 3000
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

What to wait for.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### MinFrequency

The minimum frequency of the beeps.
Must be at least one lower than MaxFrequency.
Increase delta to play random frequency sounds on each beep.

```yaml
Type: System.Int32
DefaultValue: 2999
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

### NoProgress

Disables progress bar.

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

### RandomInterval

Randomizes the interval between two signal sounds.

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


