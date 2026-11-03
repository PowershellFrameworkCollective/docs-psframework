---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSUObjectExpansion
---

# Register-PSUObjectExpansion

## Synopsis

Registers a custom scriptblock for a type when processed by Expand-PSUObject.

## Syntax

### __AllParameterSets

```
Register-PSUObjectExpansion [-TypeName] <string> [-ScriptBlock] <scriptblock> [<CommonParameters>]
```

## Description

Registers a custom scriptblock for a type when processed by Expand-PSUObject.

Expand-PSUObject enables accelerated object expansion,
by shortening the "Select-Object -ExpandProperty" call to "exp".
It further has a list of default properties to expand,
but it also allows implementing custom expansion rules, based on input type.

This commands sets up these custom expansion rules.
Define a scriptblock, it receives a single parameter - the input object to expand.
The scriptblock is then responsible for expanding it and producing the desired output.

## Examples

### EXAMPLE 1

```powershell
Register-PSUObjectExpansion -TypeName 'MyModule.MyClass' -ScriptBlock $ScriptBlock
```

Sets up a custom expansion rule for the 'MyModule.MyClass' class.

## Parameters

### ScriptBlock

The scriptblock performing the expansion.

```yaml
Type: System.Management.Automation.ScriptBlock
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

### TypeName

The name of the type to custom-expand.

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


