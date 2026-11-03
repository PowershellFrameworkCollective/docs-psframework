---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSFTeppCompletion
---

# Remove-PSFTeppCompletion

## Synopsis

Removes a previously added completion result from a tab completion script.

## Syntax

### __AllParameterSets

```
Remove-PSFTeppCompletion [-Name] <string> [-Options] <Object[]> [<CommonParameters>]
```

## Description

Removes a previously added completion result from a tab completion script.
These can be added using Add-PSFTeppCompletion or trained using Import-PSFTeppCompletion.
This command has no effect on automatically calculated tab completions!

## Examples

### EXAMPLE 1

```powershell
Remove-PSFTeppCompletion -Name 'Alcohol.Type' -Options 'Mojito', 'Caipirinha'
```

Removes the two listed drinks from the list of legal completions.

## Parameters

### Name

Name of the tab completion scriptblock to remove from.
Use Register-PSFTeppScriptblock to define a new completion scriptblock.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Completion
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Options

The completion options to remove.
Must be either the string value of the completion or a hashtable with the "Text" key containing the completion value.

```yaml
Type: System.Object[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


