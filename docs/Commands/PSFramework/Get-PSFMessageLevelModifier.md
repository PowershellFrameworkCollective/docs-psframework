---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFMessageLevelModifier
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFMessageLevelModifier
---

# Get-PSFMessageLevelModifier

## Synopsis

Returns all registered message level modifiers with similar name.

## Syntax

### __AllParameterSets

```
Get-PSFMessageLevelModifier [[-Name] <string>] [<CommonParameters>]
```

## Description

Returns all registered message level modifiers with similar name.

Message level modifiers are created using New-PSFMessageLevelModifier and allow dynamically modifying the actual message level written by commands.

## Examples

### EXAMPLE 1

```powershell
Get-PSFMessageLevelModifier
```

Returns all message level filters

### EXAMPLE 2

```powershell
Get-PSFmessageLevelModifier -Name "mymodule.*"
```

Returns all message level filters that start with "mymodule."

## Parameters

### Name

Default: "*"
A name filter - only commands that are similar to the filter will be returned.

```yaml
Type: System.String
DefaultValue: '*'
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


