---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Find-PSMDType
---

# Find-PSMDType

## Synopsis

Searches assemblies for types.

## Syntax

### __AllParameterSets

```
Find-PSMDType [[-Name] <string>] [[-FullName] <string>] [[-Assembly] <Assembly[]>]
 [[-Implements] <string>] [[-InheritsFrom] <string>] [[-Attribute] <string>] [-Public] [-Enum]
 [-Static] [<CommonParameters>]
```

## Description

This function searches the currently imported assemblies for a specific type.
It is not inherently limited to public types however, and can search interna just as well.

Can be used to scan for dependencies, to figure out what libraries one needs for a given type and what dependencies exist.

## Examples

### EXAMPLE 1

```powershell
Find-PSMDType -Name "*String*"
```

Finds all types whose name includes the word "String"
(This will be quite a few)

### EXAMPLE 2

```powershell
Find-PSMDType -InheritsFrom System.Management.Automation.Runspaces.Runspace
```

Finds all types that inherit from the Runspace class

## Parameters

### Assembly

Default: (Get-PSMDAssembly)
The assemblies to search.
By default, all loaded assemblies are searched.

```yaml
Type: System.Reflection.Assembly[]
DefaultValue: (Get-PSMDAssembly)
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Attribute

The type must have this attribute assigned.
Accepts wildcards.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Enum

Whether the type to find must be an enumeration.

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

### FullName

Default: "*"
The FullName of the type to search for.
Accepts wildcards.

```yaml
Type: System.String
DefaultValue: '*'
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

### Implements

Whether the type to find must implement this interface

```yaml
Type: System.String
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

### InheritsFrom

The type must directly inherit from this type.
Accepts wildcards.

```yaml
Type: System.String
DefaultValue: ''
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

### Name

Default: "*"
The name of the type to search for.
Accepts wildcards.

```yaml
Type: System.String
DefaultValue: '*'
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

### Public

Whether the type to find must be public.

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

### Static

Whether the type to find must be static.

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


