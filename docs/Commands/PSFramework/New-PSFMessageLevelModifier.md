---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/New-PSFMessageLevelModifier
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFMessageLevelModifier
---

# New-PSFMessageLevelModifier

## Synopsis

Allows modifying message levels by powerful filters.

## Syntax

### __AllParameterSets

```
New-PSFMessageLevelModifier [-Name] <string> [-Modifier] <int> [[-IncludeFunctionName] <string>]
 [[-ExcludeFunctionName] <string>] [[-IncludeModuleName] <string>] [[-ExcludeModuleName] <string>]
 [[-IncludeTags] <string[]>] [[-ExcludeTags] <string[]>] [-EnableException] [<CommonParameters>]
```

## Description

Allows modifying message levels by powerful filters.

This is designed to allow a developer to have more control over what is written how during the development process.
It also allows a debug user to fine tune what he is shown.

This functionality is NOT designed for default implementation within a module.
Instead, set healthy message levels for your own messages and leave others to tend to their own levels.

Note:
Adding too many level modifiers may impact performance, use with discretion.

## Examples

### EXAMPLE 1

```powershell
New-PSFMessageLevelModifier -Name 'MyModule-Include' -Modifier -9 -IncludeModuleName MyModule
PS C:\> New-PSFMessageLevelModifier -Name 'MyModule-Exclude' -Modifier 9 -ExcludeModuleName MyModule
```

These settings will cause all messages from the module 'MyModule' to be highly prioritized and almost certainly written to host.
It will also make it highly unlikely, that messages from other modules will even be considered for anything but the lowest level.

This is useful when prioritizing your own module during development.

## Parameters

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

### ExcludeFunctionName

Messages from functions with one of these exact names will be ignored.

```yaml
Type: System.String
DefaultValue: ''
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

### ExcludeModuleName

Messages from module with one of these exact names will be ignored.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ExcludeTags

Messages that contain one of these tags will be ignored.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### IncludeFunctionName

Only messages from functions with one of these exact names will be considered.

```yaml
Type: System.String
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

### IncludeModuleName

Only messages from modules with one of these exact names will be considered.

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

### IncludeTags

Only messages that contain one of these tags will be considered.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Modifier

The level modifier to apply.
- Use a negative value to make a message more relevant
- Use a positive value to make a message less relevant
While not limited to this range, the original levels range from 1 through 9:
- 1-3 : Written to host and debug by default
- 4-6 : Written to verbose and debug by default
- 7-9 : Internas, written only to debug

```yaml
Type: System.Int32
DefaultValue: 0
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

### Name

The name of the level modifier.
Can be arbitrary, but must be unique.
Not case sensitive.

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
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


