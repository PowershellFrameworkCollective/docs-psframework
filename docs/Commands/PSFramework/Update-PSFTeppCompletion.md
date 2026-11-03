---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Update-PSFTeppCompletion
---

# Update-PSFTeppCompletion

## Synopsis

Imports provided values to parameters configured for an auto-training argument completer.

## Syntax

### __AllParameterSets

```
Update-PSFTeppCompletion [<CommonParameters>]
```

## Description

When registering an Argument Completer using "Register-PSFTeppScriptblock", it is possible to configure it for automatic training ("-AutoTraining").
Doing so will not do anything ...
by itself.
When you apply the argument completer to a parameter, it is now essential to do so via attribute and not via "Register-PSFTeppArgumentCompleter", as the automatic training depends on the attribute.

Finally, within your command, simply call this Cmdlet - it will automatically match bound parameters against parameter attributes and add all applicable values to the completion cache, allowing the completion to offer the new values henceforth.

For finer control of adding explicit values to a specific completer's offered values, use "Add-PSFTeppCompletion" instead.

## Examples

### Example 1

```powershell
PS C:\> Update-PSFTeppCompletion
```

Imports provided values to parameters configured for an auto-training argument completer.

## Parameters

## Notes





