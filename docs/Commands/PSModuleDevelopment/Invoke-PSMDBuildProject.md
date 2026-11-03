---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSMDBuildProject
---

# Invoke-PSMDBuildProject

## Synopsis

Execute a build project.

## Syntax

### __AllParameterSets

```
Invoke-PSMDBuildProject [[-Path] <string>] [-InheritArtifacts] [-RetainArtifacts]
 [<CommonParameters>]
```

## Description

Execute a build project.
A build project is a configured chain of actions that have been configured in json.
They will be processed in their specified order and allow manageable, configurable steps without having to reinvent the same action again and again.

+ Individual action types become available using Register-PSMDBuildAction.
+ Create new build projects using New-PSMDBuildProject
+ Set up steps taken during a build using Set-PSMDBuildStep
+ Select the default build project using Select-PSMDBuildProject

## Examples

### EXAMPLE 1

```powershell
Invoke-PSMDBuildProject -Path .\VMDeployment.build.Json
```

Execute the build file "VMDeployment.build.json" from the current folder

### EXAMPLE 2

```powershell
build
```

Execute the default build project.

## Parameters

### InheritArtifacts

Accept artifacts that were generated before ever executing this pipeline.
By default, any artifacts previously provisioned are cleared on pipeline start.

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

The path to the build project file to execute.
Mandatory if no build project has been selected as the default project.
Use the Select-PSMDBuildProject to define a default project (and optionally persist the choice across sessions)

```yaml
Type: System.String
DefaultValue: ''
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

### RetainArtifacts

Whether, after executing the project, its artifacts should be retained.
By default, any artifacts created during a build project will be discarded upon project completion.

Artifacts are similar to variables to the pipeline and can be used to pass data throughout the pipeline.

+ Use Publish-PSMDBuildArtifact to create a new artifact.
+ Use Get-PSMDBuildArtifact to access existing build artifacts.

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


