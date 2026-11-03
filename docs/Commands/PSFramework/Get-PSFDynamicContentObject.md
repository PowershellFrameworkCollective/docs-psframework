---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFDynamicContentObject
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFDynamicContentObject
---

# Get-PSFDynamicContentObject

## Synopsis

Retrieves a named value object that can be updated from another runspace.

## Syntax

### __AllParameterSets

```
Get-PSFDynamicContentObject [-Name] <string[]> [<CommonParameters>]
```

## Description

Retrieves a named value object that can be updated from another runspace.

This comes in handy to have a variable that is automatically updated.
Use this function to receive an object under a given name.
Use Set-PSFDynamicContentObject to update the value of the object.

It matters not from what runspace you update the object.

Note:
When planning to use such an object, keep in mind that it can easily change its content at any given time.

## Examples

### EXAMPLE 1

```powershell
Get-PSFDynamicContentObject -Name "Test"
```

Returns the Dynamic Content Object named "test"

## Parameters

### Name

The name of the object to retrieve.
Will create an empty value object if the object doesn't already exist.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


