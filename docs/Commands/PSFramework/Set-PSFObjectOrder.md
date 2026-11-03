---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: https://go.microsoft.com/fwlink/?LinkID=2097038
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFObjectOrder
---

# Set-PSFObjectOrder

## Synopsis

Wrapper around Sort-Object, unifying the parameter seruface between PS5 and PS7.

## Syntax

### Default

```
Set-PSFObjectOrder [[-Property] <SortParameter[]>] [-Stable] [-Descending] [-Unique]
 [-InputObject <psobject>] [-Culture <string>] [-CaseSensitive] [<CommonParameters>]
```

### Top

```
Set-PSFObjectOrder [[-Property] <SortParameter[]>] -Top <int> [-Descending] [-Unique]
 [-InputObject <psobject>] [-Culture <string>] [-CaseSensitive] [<CommonParameters>]
```

### Bottom

```
Set-PSFObjectOrder [[-Property] <SortParameter[]>] -Bottom <int> [-Descending] [-Unique]
 [-InputObject <psobject>] [-Culture <string>] [-CaseSensitive] [<CommonParameters>]
```

## Description

Wrapper around Sort-Object, unifying the parameter seruface between PS5 and PS7.

## Examples

### Example 1

```powershell
PS C:\> 1,4,2,3 | Set-PSFObjectOrder
```

Sorts the numbers in an ascending order.

## Parameters

### Bottom

Gets or sets the number of items to return in a Bottom N sort.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Bottom
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CaseSensitive

Indicates that the sort is case-sensitive.
By default, sorts aren't case-sensitive.

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

### Culture

Specifies the cultural configuration to use for sorts.
Use `Get-Culture` to display the system's culture configuration.

```yaml
Type: System.String
DefaultValue: None
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

### Descending

Indicates that `Set-PSFObjectOrder` sorts the objects in descending order.
The default is ascending order.

To sort multiple properties with different sort orders, use a hash table.
For example, with a hash table you can sort one property in ascending order and another property in descending order.

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

### InputObject

To sort objects, send them down the pipeline to `Set-PSFObjectOrder`.
If you use the InputObject parameter to submit a collection of items, `Set-PSFObjectOrder` receives one object that represents the collection.
Because one object can't be sorted, `Set-PSFObjectOrder` returns the entire collection unchanged.

```yaml
Type: System.Management.Automation.PSObject
DefaultValue: None
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

### Property

The Properties that would be used for Sorting.
Accepts the default input `Sort-Object` would have expected, but also supports prefixes to determine sort order:

- ">Name": Sorts by Name (Descending)

- "<Name": Sorts by Name (Ascending)


It can also handle direct references to sub-properties or methods:
- "Timestamp.Year": Sorts by only the year property of the timestamp.

```yaml
Type: PSFramework.Parameter.SortParameter[]
DefaultValue: None
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

### Stable

The sorted objects are delivered in the order they were received when the sort criteria are equal.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Top

Specifies the number of objects to get from the start of a sorted object array.
This results in a stable sort.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Top
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Unique

Indicates that `Set-PSFObjectOrder` eliminates duplicates and returns only the unique members of the collection.
The first instance of a unique value is included in the sorted output.
Unique is case-insensitive.
Strings that only differ by character case are considered the same.
For example, character and CHARACTER.

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

## Notes




## Links

Microsoft.PowerShell.PlatyPS.Model.Links


