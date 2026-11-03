---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFUserChoice
---

# Get-PSFUserChoice

## Synopsis

Prompts the user to choose between a set of options.

## Syntax

### __AllParameterSets

```
Get-PSFUserChoice [-Options] <Object[]> [[-Caption] <string>] [[-Message] <string>]
 [[-DefaultChoice] <int>] [-Vertical] [<CommonParameters>]
```

## Description

Prompts the user to choose between a set of options.
Returns the index of the choice picked as a number.

## Examples

### EXAMPLE 1

```powershell
Get-PSFUserChoice -Options "1) Create a new user", "2) Disable a user", "3) Unlock an account", "4) Get a cup of coffee", "5) Exit" -Caption "User administration menu" -Message "What operation do you want to perform?"
```

Prompts the user for what operation to perform from the set of options provided

## Parameters

### Caption

The title of the question, so the user knows what it is all about.

```yaml
Type: System.String
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

### DefaultChoice

The index of the choice made by default.
By default, the first option is selected as default choice.

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

### Message

A message to offer to the user.
Be more specific about the implications of this choice.

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

### Options

The options the user may pick from.
The user selects a choice by specifying the letter associated with a choice.
The letter assigned to a choice is picked from the character after the first '&' in any specified string.
If there is no '&', the system will automatically pick the first letter as choice letter:
"This &is an example" will have the character "i" bound for the choice.
"This is &an example" will have the character "a" bound for the choice.
"This is an example" will have the character "T" bound for the choice.

This parameter takes both strings and hashtables (in any combination).
A hashtable is expected to have two properties, 'Label' and 'Help'.
Label is the text shown in the initial prompt, help what the user sees when requesting help.

```yaml
Type: System.Object[]
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

### Vertical

Displays the options vertically, one per line, rather than the default side-by-side display.
Each option will be numbered.
Option numbering starts at 1, return will always be one lower than the selected number.

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


