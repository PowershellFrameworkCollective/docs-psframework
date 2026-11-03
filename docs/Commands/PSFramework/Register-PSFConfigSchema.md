---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFConfigSchema
---

# Register-PSFConfigSchema

## Synopsis

Register new schemas for ingersting configuration data.

## Syntax

### __AllParameterSets

```
Register-PSFConfigSchema [[-Name] <string>] [[-Schema] <scriptblock>] [<CommonParameters>]
```

## Description

Register new schemas for ingersting configuration data.
This can be used to dynamically extend the configuration system and add new file types as supported input.

## Examples

### EXAMPLE 1

```powershell
Register-PSFConfigSchema -Name Default -Schema $scriptblock
```

Registers the scriptblock stored in $scriptblock under 'Default'

## Parameters

### Name

The name of the Schema to register.

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

### Schema

The Schema Code to register.

```yaml
Type: System.Management.Automation.ScriptBlock
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


