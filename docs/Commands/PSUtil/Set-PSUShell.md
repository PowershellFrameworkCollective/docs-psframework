---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSUShell
---

# Set-PSUShell

## Synopsis

Command that sets various console properties

## Syntax

### __AllParameterSets

```
Set-PSUShell [[-WindowWidth] <int>] [[-BackgroundColor] <ConsoleColor>]
 [[-ForegroundColor] <ConsoleColor>] [[-BufferLength] <int>] [[-WindowTitle] <string>]
 [-EnableException] [<CommonParameters>]
```

## Description

Command that sets various console properties.

## Examples

### EXAMPLE 1

```powershell
Set-PSUShell -WindowWidth 140 -WindowTitle "The Foo Shell" -ForegroundColor DarkGreen -BackgroundColor Black
```

Sets the current shell to ...
- 140 pixel width
- have a title of "The Foo Shell"
- Use a foreground color of DarkGreen for all output, default prompt color and comment color (PSReadline syntax detection remains unaffected)
- Use a background color of Black

## Parameters

### BackgroundColor

The background color to use.
Is PSReadline aware.

```yaml
Type: System.ConsoleColor
DefaultValue: ''
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

### BufferLength

How lengthy a memory the console screen keeps.
The size of the stuff cls clears.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
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

### ForegroundColor

The foreground color to use.
Is PSReadline aware.

```yaml
Type: System.ConsoleColor
DefaultValue: ''
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

### WindowTitle

The title the window should have.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### WindowWidth

The width of the console window.
Not much of a change on windows 10, more of a chore on older console hosts.

```yaml
Type: System.Int32
DefaultValue: 0
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


