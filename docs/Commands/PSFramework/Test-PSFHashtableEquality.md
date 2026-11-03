---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFHashtableEquality
---

# Test-PSFHashtableEquality

## Synopsis

Compares hashtables on a per-entry (key and value) basis.

## Syntax

### __AllParameterSets

```
Test-PSFHashtableEquality [-Table1] <hashtable> [-Table2] <hashtable> [-CaseSensitive] [-Recurse]
 [-OneDirectional] [<CommonParameters>]
```

## Description

Compares hashtables on a per-entry basis.
It ensures both keys and values are equal as PowerShell considers equality.

## Examples

### EXAMPLE 1

```powershell
Test-PSFHashtableEquality -Table1 $param -Table2 $oldParam
```

Returns whether $param is equal to $oldParam on a per-entry key & value basis.

### EXAMPLE 2

```powershell
Test-PSFHashtableEquality -Table1 $param -Table2 $oldParam -Recurse
```

Returns whether $param is equal to $oldParam on a per-entry key & value basis.

## Parameters

### CaseSensitive

Whether the value-comparison is case sensitive.

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

### OneDirectional

If enabled, all entries in $Table1 must be present in $Table2, but not necessarily all entries in Table2 in Table1
By default, all entries in both hashtables must match the other hashtable's.

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

### Recurse

Whether nested hashtables should be compared.
Beware: Recursive nesting can lead to an infinite depth recursion.

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

### Table1

The first hashtable to compare.

```yaml
Type: System.Collections.Hashtable
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

### Table2

The second hashtable to compare.

```yaml
Type: System.Collections.Hashtable
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


