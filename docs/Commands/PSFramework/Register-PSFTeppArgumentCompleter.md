---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFTeppArgumentCompleter
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFTeppArgumentCompleter
---

# Register-PSFTeppArgumentCompleter

## Synopsis

Registers a parameter for a prestored Tepp.

## Syntax

### __AllParameterSets

```
Register-PSFTeppArgumentCompleter [-Command] <string[]> [-Parameter] <string[]> [-Name] <string>
 [<CommonParameters>]
```

## Description

Registers a parameter for a prestored Tepp.
This function allows easily registering a function's parameter for Tepp in the function-file, rather than in a centralized location.

## Examples

### EXAMPLE 1

```powershell
Register-PSFTeppArgumentCompleter -Command Get-Test -Parameter Example -Name MyModule.Example
```

Registers the parameter 'Example' of the command 'Get-Test' to receive the tab completion registered to 'MyModule.Example'

## Parameters

### Command

Name of the command whose parameter should receive Tepp.

```yaml
Type: System.String[]
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

### Name

Name of the Tepp Completioner to use.
Use the same name as was assigned in Register-PSFTeppScriptblock (which needs to be called first).

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Parameter

Name of the parameter that should be Tepp'ed.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


