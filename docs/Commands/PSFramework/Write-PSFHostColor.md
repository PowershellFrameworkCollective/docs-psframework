---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Write-PSFHostColor
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Write-PSFHostColor
---

# Write-PSFHostColor

## Synopsis

Function that recognizes html-style tags to insert color into printed text.

## Syntax

### __AllParameterSets

```
Write-PSFHostColor [[-String] <string[]>] [[-DefaultColor] <ConsoleColor>] [[-Level] <MessageLevel>]
 [-NoNewLine] [<CommonParameters>]
```

## Description

Function that recognizes html-style tags to insert color into printed text.

Color tags should be designed to look like this:
<c="<console color>">Text</c>
For example this would be a valid string:
"This message should <c="red">partially be painted in red</c>!"

This allows specifying color within strings and avoids having to piece together colored text in multiple calls to Write-Host.
Only colors that are part of the ConsoleColor enumeration can be used.
Bad colors will be ignored in favor of the default color.

## Examples

### EXAMPLE 1

```powershell
bloody red</c> text! And this is <c="green">green stuff</c> for extra color'
```

Will print the specified line in multiple colors

### EXAMPLE 2

```powershell
bloody red</c> text! And this is <c="green">green stuff</c> for extra color'
$string2 = '<c="red">bloody red</c> text! And this is <c="green">green stuff</c> for extra color'
$string3 = 'This is going to be <c="red">bloody red</c> text! And this is <c="green">green stuff</c>'
$string1, $string2, $string3 | Write-PSFHostColor -DefaultColor "Magenta"
```

Will print all three lines, respecting the color-codes, but use the color "Magenta" as default color.

### EXAMPLE 3

```powershell
$stringLong = @"
Dear <c="red">Sirs</c><c="green"> and</c> <c="blue">Madams</c>,
```

it has come to our attention that you are not sufficiently <c="darkblue">awesome!</c>
Kindly improve your <c="yellow">AP</c> (<c="magenta">awesome-ness points</c>) by at least 50% to maintain you membership in Awesome Inc!

You have <c="green">27 3/4</c> days time to meet this deadline.
<c="darkyellow">After this we will unfortunately be forced to rend you assunder and sacrifice your remains to the devil</c>.

Best regards,
<c="red">Luzifer</c>
"@
Write-PSFHostColor -String $stringLong

Will print a long multiline text in its entirety while still respecting the colorcodes

## Parameters

### DefaultColor

Default: (Get-DbaConfigValue -Name "message.infocolor")
The color to write stuff to host in when no (or bad) color-code was specified.

```yaml
Type: System.ConsoleColor
DefaultValue: (Get-PSFConfigValue -FullName "psframework.message.info.color")
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

### Level

By default, all messages to Write-PSFHostColor will be printed to host.
By specifying a level, it will only print the text if that level is within the range visible to the user.

Visibility is controlled by the following two configuration settings:
  psframework.message.info.maximum
  psframework.message.info.minimum

```yaml
Type: PSFramework.Message.MessageLevel
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

### NoNewLine

Specifies that the content displayed in the console does not end with a newline character.

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

### String

The message to write to host.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


