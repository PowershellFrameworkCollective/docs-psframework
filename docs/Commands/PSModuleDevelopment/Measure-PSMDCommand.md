---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Measure-PSMDCommand
---

# Measure-PSMDCommand

## Synopsis

Measures command performance with consecutive tests.

## Syntax

### Script

```
Measure-PSMDCommand -ScriptBlock <scriptblock> [-Iterations <int>] [<CommonParameters>]
```

### Set

```
Measure-PSMDCommand -TestSet <hashtable> [-Iterations <int>] [<CommonParameters>]
```

## Description

This function measures the performance of a scriptblock many consective times.

Warning: Running a command repeatedly may not yield reliable information, since repeated executions may benefit from caching or other performance enhancing features, depending on the script content.
This is best suited for measuring the performance of tasks that will later be run repeatedly as well.
It also is useful for mitigating local performance fluctuations when comparing performances.

## Examples

### EXAMPLE 1

```powershell
Measure-PSMDCommand -ScriptBlock { dir \\Server\share } -Iterations 100
```

This tries to use Get-ChildItem on a remote directory 100 consecutive times, then measures performance and reports common performance indicators (Average duration, Maximum, Minimum, Total)

## Parameters

### Iterations

How many times should this performance test be repeated.

```yaml
Type: System.Int32
DefaultValue: 1
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

### ScriptBlock

The scriptblock whose performance is to be measure.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Script
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TestSet

Accepts a hashtable, mapping a name to a specific scriptblock to measure.
This will generate a result grading the performance of the various sets offered.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Set
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


