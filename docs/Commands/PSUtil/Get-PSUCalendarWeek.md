---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSUCalendarWeek
---

# Get-PSUCalendarWeek

## Synopsis

Calculates the calendar week of the specified date.

## Syntax

### __AllParameterSets

```
Get-PSUCalendarWeek [[-Date] <DateTimeParameter>] [[-FirstDay] <DayOfWeek>]
 [[-WeekRule] <CalendarWeekRule>] [[-Culture] <cultureinfo>] [<CommonParameters>]
```

## Description

Calculates the calendar week of the specified date.
Can be customized to fit the calendar rules of a given culture.

## Examples

### EXAMPLE 1

```powershell
Get-PSUCalendarWeek
```

Gets the current calendar week

## Parameters

### Culture

The culture to use when determining the calendarweek of the specified date.
Defaults to the current culture.

```yaml
Type: System.Globalization.CultureInfo
DefaultValue: (Get-Culture)
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

### Date

The date for which to process the calendar week.
Defaults to the current time and date.

```yaml
Type: PSFramework.Parameter.DateTimeParameter
DefaultValue: (Get-Date)
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

### FirstDay

Which day is considered the first day of the week.
Defaults to the current or selected culture.

```yaml
Type: System.DayOfWeek
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

### WeekRule

The rule by which the first week of the year is determined.
Defaults to the current or selected culture.

```yaml
Type: System.Globalization.CalendarWeekRule
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


