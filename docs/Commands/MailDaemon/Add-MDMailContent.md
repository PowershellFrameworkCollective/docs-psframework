---
document type: cmdlet
external help file: MailDaemon-Help.xml
HelpUri: 
Locale: en-US
Module Name: MailDaemon
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Add-MDMailContent
---

# Add-MDMailContent

## Synopsis

Adds content to a pending email.

## Syntax

### __AllParameterSets

```
Add-MDMailContent [[-Body] <string>] [[-Attachments] <string[]>] [<CommonParameters>]
```

## Description

Adds content to a pending email.
Use this command to incrementally add to the mail sent.

## Examples

### EXAMPLE 1

```powershell
Add-MDMailContent -Body "Phase 3: Completed"
```

Adds the line "Phase 3: Completed" to the email body.

## Parameters

### Attachments

Add files to the list of files to send.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Body

Add text to the mail body.

```yaml
Type: System.String
DefaultValue: ''
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


