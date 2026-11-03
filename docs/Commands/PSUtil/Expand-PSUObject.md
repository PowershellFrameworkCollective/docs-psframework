---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Expand-PSUObject
---

# Expand-PSUObject

## Synopsis

A comfortable replacement for Select-Object -ExpandProperty.

## Syntax

### Equals

```
Expand-PSUObject [[-Name] <string>] [-InputObject <Object>] [<CommonParameters>]
```

### Match

```
Expand-PSUObject [-Name] <string> -Match [-InputObject <Object>] [<CommonParameters>]
```

### Like

```
Expand-PSUObject [-Name] <string> -Like [-InputObject <Object>] [<CommonParameters>]
```

## Description

A comfortable replacement for Select-Object -ExpandProperty.
Allows extracting properties with less typing and more flexibility:

Preferred Properties:
By defining a list of property-names in $DefaultExpandedProperties the user can determine his own list of preferred properties to expand.
This allows using this command without specifying a property at all.
It will then check the first object for the property to use (starting from the first element of the list until it finds an exact case-insensitive match).

Defined Property:
The user can specify the exact property to extract.
This is the same behavior as Select-Object -ExpandProperty, with less typing (dir | exp length).

Like / Match comparison:
Specifying either like or match allows extracting any number of matching properties from each object.
Note that this is a somewhat more CPU-expensive operation (which shouldn't matter unless with gargantuan numbers of objects).

## Examples

### EXAMPLE 1

```powershell
dir | exp
```

Expands the property whose name is the first on the defaults list ($DefaultExpandedProperties).
By default, FullName would be expanded.

### EXAMPLE 2

```powershell
dir | exp length
```

Expands the length property of all objects returned by dir.
Simply ignores those that do not have the property (folders).

### EXAMPLE 3

```powershell
dir | exp name -match
```

Expands all properties from all objects returned by dir that match the string "name" ("PSChildName", "FullName", "Name", "BaseName" for directories)

## Parameters

### InputObject

The objects whose properties are to be expanded.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Like

ParSet: Like
Expands all properties that match the -Name parameter using -like comparison.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Like
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Match

ParSet: Match
Expands all properties that match the -Name parameter using -match comparison.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Match
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

ParSet: Equals, Like, Match
The name of the Property to expand.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Match
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Like
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Equals
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


