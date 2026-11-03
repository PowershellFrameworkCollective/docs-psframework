---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Remove-PSFMessageLevelModifier
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSFMessageLevelModifier
---

# Remove-PSFMessageLevelModifier

## Synopsis

Removes a message level modifier.

## Syntax

### __AllParameterSets

```
Remove-PSFMessageLevelModifier [[-Name] <string[]>] [[-Modifier] <MessageLevelModifier[]>]
 [-EnableException] [<CommonParameters>]
```

## Description

Removes a message level modifier.

Message Level Modifiers can be created by using New-PSFMessageLevelModifier.
They are used to emphasize or deemphasize messages, in order to help with debugging.

## Examples

### EXAMPLE 1

```powershell
Get-PSFMessageLevelModifier | Remove-PSFMessageLevelModifier
```

Removes all message level modifiers, restoring everything to their default levels.

### EXAMPLE 2

```powershell
Remove-PSFMessageLevelModifier -Name "mymodule.foo"
```

Removes the message level modifier named "mymodule.foo"

## Parameters

### EnableException

This parameters disables user-friendly warnings and enables the throwing of exceptions.
This is less user friendly, but allows catching exceptions in calling scripts.

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

### Modifier

The actual modifier to remove, as returned by Get-PSFMessageLevelModifier.

```yaml
Type: PSFramework.Message.MessageLevelModifier[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the message level modifier to remove.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


