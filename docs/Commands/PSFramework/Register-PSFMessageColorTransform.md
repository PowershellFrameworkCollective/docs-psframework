---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFMessageColorTransform
---

# Register-PSFMessageColorTransform

## Synopsis

Adds a rule that changes the color of messages when applicable.

## Syntax

### default

```
Register-PSFMessageColorTransform -Name <string> -Color <ConsoleColor> [-Priority <int>]
 [-IncludeTags <string[]>] [-ExcludeTags <string[]>] [-IncludeModules <string[]>]
 [-ExcludeModules <string[]>] [-IncludeFunctions <string[]>] [-ExcludeFunctions <string[]>]
 [<CommonParameters>]
```

### Level

```
Register-PSFMessageColorTransform -Name <string> -Color <ConsoleColor> [-Priority <int>]
 [-Level <MessageLevel>] [-IncludeTags <string[]>] [-ExcludeTags <string[]>]
 [-IncludeModules <string[]>] [-ExcludeModules <string[]>] [-IncludeFunctions <string[]>]
 [-ExcludeFunctions <string[]>] [<CommonParameters>]
```

### Range

```
Register-PSFMessageColorTransform -Name <string> -Color <ConsoleColor> [-Priority <int>]
 [-MinLevel <int>] [-MaxLevel <int>] [-IncludeTags <string[]>] [-ExcludeTags <string[]>]
 [-IncludeModules <string[]>] [-ExcludeModules <string[]>] [-IncludeFunctions <string[]>]
 [-ExcludeFunctions <string[]>] [<CommonParameters>]
```

## Description

Adds a rule that changes the color of messages when applicable.
This only affects messages that are shown to the user through the information levels.
Verbose messages, debug messages or waranings are unaffected, as their color is determined by the system.

Inline color assignments beat this color transformation.

## Examples

### EXAMPLE 1

```powershell
Register-PSFMessageColorTransform -Name 'PSFramework.Critical' -IncludeModules PSFramework -Level Critical -Color Magenta
```

Critical messages written from any command in PSFramework will be written in Magenta by default.

## Parameters

### Color

The color to apply to the message.

```yaml
Type: System.ConsoleColor
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

### ExcludeFunctions

A message must not come from one of these functions in order to be colored.

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

### ExcludeModules

A message must not come from one of these modules in order to be colored.

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

### ExcludeTags

A message may not contain any of these tags in order to be colored.

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

### IncludeFunctions

A message must come from one of these functions in order to be colored.

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

### IncludeModules

A message must come from one of these modules in order to be colored.

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

### IncludeTags

A message must contain at least one of these tags in order to be colored.

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

### Level

Applies only to messages of the specified level

```yaml
Type: PSFramework.Message.MessageLevel
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Level
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### MaxLevel

Applies to all messages that have no higher level than this.
Note: The lower the level, the higher the default visibility.
Users usually see levels 1-3.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Range
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### MinLevel

Applies to all messages that have at least this level.
Note: The lower the level, the higher the default visibility.
Users usually see levels 1-3.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Range
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

Name of the rule.
Must be unique and should tell the user where it comes from.

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

### Priority

The priority of a color assignment determines, which rule wins when multiple registered transformation rules apply.
The lower the number, the higher the precedence and the better the chance for the color to apply.
Defaults to: 50

```yaml
Type: System.Int32
DefaultValue: 50
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


