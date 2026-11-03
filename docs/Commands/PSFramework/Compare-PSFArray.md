---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Compare-PSFArray
---

# Compare-PSFArray

## Synopsis

Compares two arrays.

## Syntax

### __AllParameterSets

```
Compare-PSFArray [-ReferenceObject] <Object[]> [-DifferenceObject] <Object[]> [-OrderSpecific]
 [-Quiet] [<CommonParameters>]
```

## Description

Compares two arrays.

## Examples

### EXAMPLE 1

```powershell
Compare-PSFArray -ReferenceObject $arraySource -DifferenceObject $arrayDestination -Quiet -OrderSpecific
```

Compares the two sets of objects, and returns ...
- $true if both sets contains the same objects in the same order
- $false if they do not

## Parameters

### DifferenceObject

The second array to compare with the first array.

```yaml
Type: System.Object[]
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

### OrderSpecific

Makes the comparison order specific.
By default, the command does not care for the order the objects are stored in.

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

### Quiet

Rather than returning a delta report object, return a single truth statement:
- $true if the two arrays are equal
- $false if the two arrays are NOT equal.

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

### ReferenceObject

The first array to compare with the second array.

```yaml
Type: System.Object[]
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


