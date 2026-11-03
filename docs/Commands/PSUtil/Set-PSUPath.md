---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSUPath
---

# Set-PSUPath

## Synopsis

Detects the alias that called it and sets the location to the corresponding path found in the configuration system.

## Syntax

### __AllParameterSets

```
Set-PSUPath [[-Alias] <string>] [-EnableException] [<CommonParameters>]
```

## Description

Detects the alias that called it and sets the location to the corresponding path.
This function will normally be called using an alias that gets set by using Set-PSUPathAlias.

## Examples

### EXAMPLE 1

```powershell
Software
PS C:\Software>
```

In this example 'Software' is an alias for Set-PSUPath that was created by using Set-PSUPathAlias.
Set-PSUPath detected that 'Software' was the alias that called it and then sends it to the path.
It receives the path from Get-PSUPathAlias 'software'

## Parameters

### Alias

This is the name of the alias that called the command.
      Default Value is $MyInvocation.InvocationName and is detected automatically

```yaml
Type: System.String
DefaultValue: $MyInvocation.InvocationName
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

### EnableException

Replaces user friendly yellow warnings with bloody red exceptions of doom!
Use this if you want the function to throw terminating errors you want to catch.

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


