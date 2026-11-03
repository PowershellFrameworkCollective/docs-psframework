---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFThrottle
---

# New-PSFThrottle

## Synopsis

Create a throttle object, used to not exceed a certain rate of executions per time interval.

## Syntax

### __AllParameterSets

```
New-PSFThrottle [-Interval] <TimeSpanParameter> [-Limit] <int> [[-ExtraLimits] <hashtable>]
 [<CommonParameters>]
```

## Description

Create a throttle object, used to not exceed a certain rate of executions per time interval.
Use this to limit the rate at which you contact throttled APIs / Service Connections.

The returnd object has a GetSlot() method, which will return immediately if slots are available.
If none are, it will wait to return until there are.

This object is threadsafe and can be used from multiple runspaces.
However, it is not guaranteed to be 100% precise with concurrent access, possibly allowing (slight) overbooking.

## Examples

### EXAMPLE 1

```powershell
New-PSFThrottle -Interval 1m -Limit 60
```

Generates a throttle object that will allow 60 slots/executions every minute.

### EXAMPLE 2

```powershell
New-PSFThrottle -Interval 1m -Limit 60 -ExtraLimits @{ '1h' = 600 }
```

Generates a throttle object that will allow 60 slots/executions every minute and 600 every hour.

## Parameters

### ExtraLimits

Additional Interval/Limit pairs to throttle over at the same time.
This allows logic such as "Not more than 10 per minute and 100 per hour".
The keys of the hashtable are the interval (same type as the Interval parameter), the values the limit (int)

```yaml
Type: System.Collections.Hashtable
DefaultValue: '@{}'
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

### Interval

The time range during which we measure slot/execution limits.
Can be either a timespan or a human-friendly notation such as "10m" for 10 minutes or "1h" for one hour.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
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

### Limit

The number of valid executions within the specified interval.

```yaml
Type: System.Int32
DefaultValue: 0
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


