---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Import-PSFCmdlet
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Import-PSFCmdlet
---

# Import-PSFCmdlet

## Synopsis

Loads a cmdlet into the current context.

## Syntax

### __AllParameterSets

```
Import-PSFCmdlet [-Name] <string> [-Type] <type> [[-HelpFile] <string>] [[-Module] <psmoduleinfo>]
 [<CommonParameters>]
```

## Description

Loads a cmdlet into the current context.
This can be used to register a cmdlet during module import, making it easy to have hybrid modules publishing both cmdlets and functions.
Can also be used to register cmdlets written in PowerShell classes.

## Examples

### EXAMPLE 1

```powershell
Import-PSFCmdlet -Name Get-Something -Type ([GetSomethingCommand])
```

Imports the Get-Something cmdlet into the current context.

### EXAMPLE 2

```powershell
Import-PSFCmdlet -Name Get-Something -Type ([GetSomethingCommand]) -Module (Get-Module PSReadline)
```

Imports the Get-Something cmdlet into the PSReadline module.

## Parameters

### HelpFile

Path to the help XML containing the help for the cmdlet.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Module

Module to inject the cmdlet into.

```yaml
Type: System.Management.Automation.PSModuleInfo
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the cmdlet to register.

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

### Type

The type of the class implementing the cmdlet.

```yaml
Type: System.Type
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

## Notes

Original Author: Chris Dent
Link: https://www.indented.co.uk/cmdlets-without-a-dll/



