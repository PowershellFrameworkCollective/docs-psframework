---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Disable-PSFConsoleInterrupt
---

# Disable-PSFConsoleInterrupt

## Synopsis

Prevents the use of CTRL+C from interrupting the console.

## Syntax

### __AllParameterSets

```
Disable-PSFConsoleInterrupt [<CommonParameters>]
```

## Description

Prevents the use of CTRL+C from interrupting the console.

Use this to prevent manual interruption of critical tasks, but do not forget to re-enable it as soon as possible.
Usually, ctrl+C is a critical part of the user experience, enabling the user to interrupt the console
and avoid a hang from locking the console.

## Examples

### EXAMPLE 1

```powershell
Disable-PSFConsoleInterrupt
```

Prevents the use of CTRL+C from interrupting the console.

## Parameters


