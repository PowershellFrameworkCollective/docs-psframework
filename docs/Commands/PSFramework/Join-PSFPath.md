---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Join-PSFPath
---

# Join-PSFPath

## Synopsis

Performs multisegment path joins.

## Syntax

### __AllParameterSets

```
Join-PSFPath [-Path] <string> [-Child <string[]>] [-Normalize] [<CommonParameters>]
```

## Description

Performs multisegment path joins.

## Examples

### EXAMPLE 1

```powershell
Join-PSFPath -Path 'C:\temp' 'Foo' 'Bar'
```

Returns 'C:\temp\Foo\Bar'

### EXAMPLE 2

```powershell
Join-PSFPath -Path 'C:\temp' 'Foo' 'Bar' -Normalize
```

      Returns 'C:\temp\Foo\Bar' on a Windows OS.
Returns 'C:/temp/Foo/Bar' on most non-Windows OSes.

## Parameters

### Child

Any number of child paths to add.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- ChildPath
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: true
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Normalize

Normalizes path separators for the path segments offered.
This ensures the correct path separators for the current OS are chosen.

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

### Path

The basepath to join on.

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


