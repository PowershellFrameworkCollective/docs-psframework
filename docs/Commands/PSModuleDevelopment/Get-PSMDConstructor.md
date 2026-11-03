---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDConstructor
---

# Get-PSMDConstructor

## Synopsis

Returns information on the available constructors of a type.

## Syntax

### __AllParameterSets

```
Get-PSMDConstructor [[-InputObject] <Object>] [-NonPublic] [<CommonParameters>]
```

## Description

Returns information on the available constructors of a type.
Accepts any object as pipeline input:
- if it's a type, it will retrieve its constructors.
- If it's not a type, it will retrieve the constructor from the type of object passed

Will not duplicate constructors if multiple objects of the same type are passed.
In order to retrieve the constructor of an array, wrap it into another array.

## Examples

### EXAMPLE 1

```powershell
Get-ChildItem | Get-PSMDConstructor
```

Scans all objects in the given path, than tries to retrieve the constructor for each kind of object returned
(generally, this will return the constructors for file and folder objects)

### EXAMPLE 2

```powershell
Get-PSMDConstructor $result
```

Returns the constructors of objects stored in $result

## Parameters

### InputObject

The object the constructor of which should be retrieved.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### NonPublic

Show non-public constructors instead.

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


