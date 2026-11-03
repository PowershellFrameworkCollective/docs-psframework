---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFSessionContainer
---

# New-PSFSessionContainer

## Synopsis

Creates an object containing multiple session objects to the same computer.

## Syntax

### __AllParameterSets

```
New-PSFSessionContainer [-ComputerName] <ComputerParameter> [-Session] <Object[]> [-EnableException]
 [<CommonParameters>]
```

## Description

Creates an object containing multiple session objects to the same computer.
Using this, a single object can be used to point at a computer while containing session objects for multiple protocols inside.

Only session types registered via Reigster-PSSessionObjectType are supported.

## Examples

### EXAMPLE 1

```powershell
New-PSFSessionContainer -ComputerName "server1" -Session $pssession, $cimsession, $smosession
```

Create a session container containing three different kinds of session objects

## Parameters

### ComputerName

The name of the computer to connect to

```yaml
Type: PSFramework.Parameter.ComputerParameter
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

### Session

The session objects that are a live connection to the host.

```yaml
Type: System.Object[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


