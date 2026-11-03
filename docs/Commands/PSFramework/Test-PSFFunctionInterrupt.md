---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Test-PSFFunctionInterrupt
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFFunctionInterrupt
---

# Test-PSFFunctionInterrupt

## Synopsis

Tests whether the calling function should be interrupted.

## Syntax

### __AllParameterSets

```
Test-PSFFunctionInterrupt [<CommonParameters>]
```

## Description

This helper function is designed to work in tandem with Stop-PSFFunction.
When gracefully terminating a function, there is a major issue:
"Return" will only stop the current one of the three blocks (Begin, Process, End).
All other statements have side effects or produce lots of red text.

So, Stop-PSFFunction writes a variable into the parent scope, that signals the function should cease.
This function then checks for that very variable and returns true if it is set.

This avoids having to handle odd variables in the parent function and causes the least impact on contributors.

For a more detailed explanation - including commented full-scale implementation examples - see the associated help article:
Get-Help about_psf_flowcontrol

## Examples

### EXAMPLE 1

```powershell
if (Test-PSFFunctionInterrupt) { return }
```

The calling function will stop if this function returns true.

## Parameters


