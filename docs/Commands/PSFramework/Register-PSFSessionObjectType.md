---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFSessionObjectType
---

# Register-PSFSessionObjectType

## Synopsis

Registers a new type as a live session object.

## Syntax

### __AllParameterSets

```
Register-PSFSessionObjectType [-DisplayName] <string> [-TypeName] <string> [<CommonParameters>]
```

## Description

Registers a new type as a live session object.
This is used in the session container object, used to pass through multiple types of connection objects to a single PSFComputer parameterclassed parameter.

## Examples

### EXAMPLE 1

```powershell
Register-PSFSessionObjectType -DisplayName 'PSSession' -TypeName 'System.Management.Automation.Runspaces.PSSession'
```

Registers the type 'System.Management.Automation.Runspaces.PSSession' under the name of 'PSSession'.

## Parameters

### DisplayName

The display name for the type.
Pick anything that intuitively points at what the object is.

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

### TypeName

The full name of the type.

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


