---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Add-PSFTeppCompletion
---

# Add-PSFTeppCompletion

## Synopsis

Adds a completion result to a tab completion script.

## Syntax

### __AllParameterSets

```
Add-PSFTeppCompletion [-Name] <string> [-Options] <Object[]> [<CommonParameters>]
```

## Description

Adds a completion result to a tab completion script.
This allows specifically adding individual values to provide when completing, no matter the actual completion logic.
Use Register-PSFTeppScriptblock to define a new completion scriptblock.

## Examples

### EXAMPLE 1

```powershell
Add-PSFTeppCompletion -Name 'Alcohol.Type' -Options Wine, Beer, Vodka
```

Adds these options to the specified completion results: Wine, Beer, Vodka

### EXAMPLE 2

```powershell
Add-PSFTeppCompletion -Name 'Alcohol.Type' -Options @{ Text = 'Mead'; ToolTip = 'Elixir of the angry gods' }
```

Add a completion to the completer named "Alcohol.Type", offering the text "Mead" and explaining it with the specified tooltip.

## Parameters

### Name

Name of the tab completion scriptblock to add to.
Use Register-PSFTeppScriptblock to define a new completion scriptblock.

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

### Options

The completion objects to provide.
Provide either a basic string or a hashtable with some key/value pairs:
- Text: Mandatory.
The text to complete.
- ToolTip: A friendly text to provide some context when completing using CTRL+Space.
- ListItemText: The text to show in the completion menu, but different from the actual text inserted.
- ToolTipString: A localization key to resolve into the currently configured language for the ToolTip.
- ListItemTextString: A localization key to resolve into the currently configured language for the ListItemText.

```yaml
Type: System.Object[]
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


