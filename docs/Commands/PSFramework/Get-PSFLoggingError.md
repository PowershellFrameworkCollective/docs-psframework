---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFLoggingError
---

# Get-PSFLoggingError

## Synopsis

Retrieve errors that happened when trying to log messages.

## Syntax

### __AllParameterSets

```
Get-PSFLoggingError [<CommonParameters>]
```

## Description

Retrieve errors that happened when trying to log messages.
This command is used to troubleshoot issues with the logging system itself.

It can only return errors that happened during the current process.
Only logging instances that are currently enabled are considered, does not work for Legacy Logging Providers.

## Examples

### EXAMPLE 1

```powershell
Get-PSFLoggingError
```

Returns all errors any currently enabled logging providers had.

## Parameters


