---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDBuildProject
---

# Get-PSMDBuildProject

## Synopsis

Reads & returns a build project.

## Syntax

### Path

```
Get-PSMDBuildProject -Path <string> [-Name <string>] [<CommonParameters>]
```

### Selected

```
Get-PSMDBuildProject -Selected [<CommonParameters>]
```

## Description

Reads & returns a build project.
A build project is a container including the steps executed during the build.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDBuildProject -Path 'C:\code\project' -Name project
```

Will load the build project stored in the file "C:\code\project\project.build.json"

## Parameters

### Name

The name of the build project to read.
Use together with the -Path parameter only.
Absolute file path assumed will be: "<Path>\<Name>.build.json"

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Path
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

Path to the build project file.
May target the folder, in which case the -Name parameter must be specified.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Path
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Selected

Rather than specifying the path to read from, return the currently selected build project.
Use Select-PSMDBuildProject to select a build project as the default ("selected") project.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Selected
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


