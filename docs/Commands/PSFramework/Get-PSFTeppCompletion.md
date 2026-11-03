---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFTeppCompletion
---

# Get-PSFTeppCompletion

## Synopsis

Lists the registered completion options.

## Syntax

### __AllParameterSets

```
Get-PSFTeppCompletion [[-Name] <string[]>] [<CommonParameters>]
```

## Description

Lists the registered completion options.
Using Add-PSFTeppCompletion, it is possible to manually provide values that will be offered during tab completion for a given argument completion script.
Alternatively, a completion scriptblock can be configured for "AutoTraining" during setup via "Register-PSFTeppScriptblock", which enables automatically
remembering values previously provided (By later calling Update-PSFTeppCompletion).

In either case, those values are stored in memory and retrieved using this command.

## Examples

### EXAMPLE 1

```powershell
Get-PSFTeppCompletion
```

List all registered completion options for all completer scriptblocks.

## Parameters

### Name

Name of the completer scriptblock, for which to retrieve registered options.
Defaults to *

```yaml
Type: System.String[]
DefaultValue: '*'
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


