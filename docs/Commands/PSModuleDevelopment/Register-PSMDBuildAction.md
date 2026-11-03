---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSMDBuildAction
---

# Register-PSMDBuildAction

## Synopsis

Register a new action usable in build projects.

## Syntax

### __AllParameterSets

```
Register-PSMDBuildAction [-Name] <string> [-Action] <scriptblock> [-Description] <string>
 [-Parameters] <hashtable> [<CommonParameters>]
```

## Description

Register a new action usable in build projects.
Actions are the actual implementation logic that turns the configuration in a build project file into ...
well, actions.
Anyway, these are basically named scriptblocks with some metadata.
This command is used to provide all the builtin actions and can be used to freely define your own actions.

Whenever you use a "script" action in your build projects, consider ...
would it make a good configurable option valuable for other builds?
If so, that might just mark the birth of the next action!

## Examples

### EXAMPLE 1

```powershell
Register-PSMDBuildAction -Name 'script' -Action $actionCode -Description 'Execute a custom scriptfile as part of your workflow' -Parameters $parameters
```

Creates / registers the action "script".

## Parameters

### Action

The actual code implementing the action.
Each action scriptblock will receive exactly one .

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

### Description

A description explaining what the action is all about.

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

### Name

The name of the action.

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

### Parameters

The parameters the action accepts.
Provider a hashtable, with the keys being the parameter names and the values being a description of its parameter.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


