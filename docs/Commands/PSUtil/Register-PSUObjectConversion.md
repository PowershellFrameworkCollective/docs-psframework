---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSUObjectConversion
---

# Register-PSUObjectConversion

## Synopsis

Registers an object conversion for Convert-PSUObject.

## Syntax

### __AllParameterSets

```
Register-PSUObjectConversion [-From] <string> [-To] <string> [-ScriptBlock] <scriptblock>
 [<CommonParameters>]
```

## Description

This command can be used to register an object conversion for Convert-PSUObject, allowing the user to extend the conversion utility as desired.

## Examples

### EXAMPLE 1

```powershell
Register-PSUObjectConversion -From 'dec' -To 'oct' -ScriptBlock $ScriptBlock
```

Registers a conversion that is supposed to convert a decimal into an octal number.

## Parameters

### From

The input type.
Using a suitable shorthand is recommended ("int" rather than "System.Int32", etc.).

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

### ScriptBlock

The scriptblock that will be invoked to convert.
Receives a single argument: The input object to convert.

```yaml
Type: System.Management.Automation.ScriptBlock
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

### To

The conversion target type.
Using a suitable shorthand is recommended ("int" rather than "System.Int32", etc.).

```yaml
Type: System.String
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


