---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFCache
---

# New-PSFCache

## Synopsis

Create a new Cache object.

## Syntax

### __AllParameterSets

```
New-PSFCache [[-MaxItems] <long>] [[-Lifetime] <TimeSpanParameter>] [[-Collector] <PsfScriptBlock>]
 [-TryDispose] [-CollectNull] [<CommonParameters>]
```

## Description

Create a new Cache object.

## Examples

### EXAMPLE 1

```powershell
New-PSFCache -MaxItems 50000
```

Creates a cache that will retain the last 50000 items.

### EXAMPLE 2

```powershell
New-PSFCache -Lifetime 30m
```

Creates a cache that will retain values for 30 minutes.

### EXAMPLE 3

```powershell
New-PSFCache -MaxItems 50000 -Collector { Get-ADGroup -Identity $_ }
```

Creates a cache that will retain the last 50000 items, looking up Active Directory groups when asked for an entry it doesn't know yet.

## Parameters

### CollectNull

When executing the collector scriptblock, should we consider an empty / null return valid and cache it?
This prevents repeated requests to the same key triggering the Collector script, which may save time.
It also prevents it from noticing if something changed.

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

### Collector

When asking for a value that hasn't been cached yet, retrieve the value using this logic.
Note: If this script fails, the retrieval errors.

```yaml
Type: PSFramework.Utility.PsfScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Lifetime

The maximum age for values in the cache.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
DefaultValue: ''
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

### MaxItems

The maximum number of items allowed in the cache.

```yaml
Type: System.Int64
DefaultValue: 0
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

### TryDispose

When expiring values from the cache, should we try to explicitly dispose them?

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


