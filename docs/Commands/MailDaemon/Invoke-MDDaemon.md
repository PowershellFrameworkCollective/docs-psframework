---
document type: cmdlet
external help file: MailDaemon-Help.xml
HelpUri: 
Locale: en-US
Module Name: MailDaemon
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-MDDaemon
---

# Invoke-MDDaemon

## Synopsis

Processes the email queue and sends emails

## Syntax

### __AllParameterSets

```
Invoke-MDDaemon [-NoLogging] [<CommonParameters>]
```

## Description

Processes the email queue and sends emails.
Should be scheduled using a scheduled task.
Recommended Setting:
- Launch on boot with delay
- Launch on Midnight
- Repeat every 30 minutes for one day

## Examples

### EXAMPLE 1

```powershell
Invoke-MDDaemon
```

Processes the email queue and sends emails

## Parameters

### NoLogging

Disables Eventlog logging.
By default, the mail invocation is logged to the Windows Eventlog.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


