---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDBuildStep
---

# Get-PSMDBuildStep

## Synopsis

Read the steps that are part of the specified build project.

## Syntax

### __AllParameterSets

```
Get-PSMDBuildStep [[-Name] <string>] [[-BuildProject] <string>] [<CommonParameters>]
```

## Description

Read the steps that are part of the specified build project.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDBuildStep
```

Read all steps that are part of the default build project.

### EXAMPLE 2

```powershell
Get-PSMDBuildStep -Name CreateSession -BuildProject C:\code\Project\Project.build.json
```

Return the CreateSession step from the specified project file.

## Parameters

### BuildProject

Path to the build project file to read from.
Defaults to the currently selected project if available.
Use Select-PSMDBuildProject to select a default project.

```yaml
Type: System.String
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

### Name

The name by which to filter the steps returned.
Defaults to '*'

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


