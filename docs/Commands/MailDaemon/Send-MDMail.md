---
document type: cmdlet
external help file: MailDaemon-Help.xml
HelpUri: 
Locale: en-US
Module Name: MailDaemon
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Send-MDMail
---

# Send-MDMail

## Synopsis

Queues current email for delivery.

## Syntax

### __AllParameterSets

```
Send-MDMail [-TaskName] <string> [-PersistAttachments] [-DontTrigger] [<CommonParameters>]
```

## Description

Uses the data prepared by Set-MDMail or Add-MDMailContent and queues the email for delivery.

## Examples

### EXAMPLE 1

```powershell
Send-MDMail -TaskName "Logrotate"
```

Queues the currently prepared email under the name "Logrotate"

## Parameters

### DontTrigger

Do not trigger the task that sends the email.
By default, after submitting an email for delivery, it will immediately trigger the scheduled task to send it.

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

### PersistAttachments

Attachments will be serialized with the queued email allowing the source files to be removed immediately.

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

### TaskName

Name of the task that is sending the email.
Used in the name of the file used to queue messages in order to reduce likelyhood of accidental clash.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


