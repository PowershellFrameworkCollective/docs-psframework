---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Unregister-PSFMessageColorTransform
---

# Unregister-PSFMessageColorTransform

## Synopsis

Removes a previously registered message color rule.

## Syntax

### __AllParameterSets

```
Unregister-PSFMessageColorTransform [-Name] <string[]> [<CommonParameters>]
```

## Description

Removes a previously registered message color rule.

## Examples

### EXAMPLE 1

```powershell
Get-PSFMessageColorTransform | Unregister-PSFMessageColorTransform
```

Clears all message color rules..

## Parameters

### Name

Name of the rule to remove.

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


