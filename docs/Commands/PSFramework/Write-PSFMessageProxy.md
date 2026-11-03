---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Write-PSFMessageProxy
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Write-PSFMessageProxy
---

# Write-PSFMessageProxy

## Synopsis

A proxy command that allows smoothly redirecting messages to Write-PSFMessage.

## Syntax

### __AllParameterSets

```
Write-PSFMessageProxy [[-Message] <string>] [-NoNewline] [-Separator <Object>]
 [-ForegroundColor <ConsoleColor>] [-BackgroundColor <ConsoleColor>] [-Tags <string[]>]
 [<CommonParameters>]
```

## Description

This function is designed to pick up the alias it was called by and to redirect the message that was sent to Write-PSFMessage.
For example, by creating an alias for Write-Host pointing at 'Write-PSFMessageProxy' will cause it to redirect the message at 'Important' level (which is written to host by default, but also logged).

By creating those aliases, it becomes easy to shift current scripts to use the logging, without having to actually update the code.

## Examples

### EXAMPLE 1

```powershell
Write-PSFMessageProxy "Example Message"
```

Will write the message "Example Message" to verbose.

### EXAMPLE 2

```powershell
Set-Alias Write-Host Write-PSFMessageProxy
PS C:\> Write-Host "Example Message"
```

This will create an alias named "Write-Host" pointing at "Write-PSFMessageProxy".
Then it will write the message "Example Message", which is automatically written to Level "Important" (which by default will be written to host).

## Parameters

### BackgroundColor

Dummy parameter to make Write-Host redirection happy.
IT WILL BE IGNORED!

```yaml
Type: System.ConsoleColor
DefaultValue: ''
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

### ForegroundColor

Configure the foreground color for host messages.

```yaml
Type: System.ConsoleColor
DefaultValue: ''
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

### Message

The message to write.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Object
- MessageData
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

### NoNewline

Dummy parameter to make Write-Host redirection happy.
IT WILL BE IGNORED!

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

### Separator

Dummy parameter to make Write-Host redirection happy.
IT WILL BE IGNORED!

```yaml
Type: System.Object
DefaultValue: ''
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

### Tags

Add tags to the messages.

```yaml
Type: System.String[]
DefaultValue: proxied
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


