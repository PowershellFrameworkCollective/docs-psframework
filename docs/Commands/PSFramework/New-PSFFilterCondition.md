---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFFilterCondition
---

# New-PSFFilterCondition

## Synopsis

Create a new filter condition used in filter expressions.

## Syntax

### __AllParameterSets

```
New-PSFFilterCondition [-Module] <string> [-Name] <string> [-ScriptBlock] <PsfScriptBlock>
 [[-Version] <version>] [[-Type] <ConditionType>] [<CommonParameters>]
```

## Description

Create a new filter condition used in filter expressions.
A filter condition is a named scriptblock that is designed evaluates either the environment or an input object.
It should never throw an exception and instead return $true or $false.

Using a filter expression then allows the user to dynamically build a truth statement by combining any number of conditions through boolean operators.

## Examples

### EXAMPLE 1

```powershell
New-PSFFilterCondition -Module 'MyModule' -Name 'HasTemp' -ScriptBlock { Test-Path -Path C:\temp }
```

Creates a condition named "HasTemp" that is part of the MyModule module.
When executed, it will validate, whether the temp folder exists.

## Parameters

### Module

The module that owns/defines the condition.
Use your own module's name to avoid conflicting with foreign modules.

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

### Name

The name of the condition.
Can only contain letters, numbers and underscore.
A name is unique within a module.

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

### ScriptBlock

The scriptblock that is used to execute the condition.
This scriptblock is bound to the context that defined it and thus runspace specific.
This means, if you define it within your module, it will have access to module interna, such as private functions.

```yaml
Type: PSFramework.Utility.PsfScriptBlock
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

### Type

What kind of condition is this:
Static:
A condition that will not change during the runtime of the process.
   For example the operating system.
Static conditions are executed only once on their first run.

Dynamic:
Dynamic conditions will be executed every single time an expression that uses it is evaluated.
Note: An expression may use the same condition multiple times, but it will still only be run once.

```yaml
Type: PSFramework.Filter.ConditionType
DefaultValue: Dynamic
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Version

The version number of the condition.
There can exist multiple versions of a condition at any given time, but only version can exist in a single Condition Set.
Defaults to 1.0.0

```yaml
Type: System.Version
DefaultValue: 1.0.0
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


