---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Select-PSMDBuildProject
---

# Select-PSMDBuildProject

## Synopsis

Set the specified build project as the default project.

## Syntax

### __AllParameterSets

```
Select-PSMDBuildProject [-Path] <string> [-Register] [<CommonParameters>]
```

## Description

Set the specified build project as the default project.
This will have most other commands in this Component automatically use the specified project.

## Examples

### EXAMPLE 1

```powershell
Select-PSMDBuildProject -Path 'c:\code\Project\Project.build.json'
```

Sets the specified build project as the default project.

## Parameters

### Path

Path to the project file to pick.

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

### Register

Persist the choice as default build project file across PowerShell sessions.

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


