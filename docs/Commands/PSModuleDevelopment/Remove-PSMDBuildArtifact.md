---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSMDBuildArtifact
---

# Remove-PSMDBuildArtifact

## Synopsis

Removes an artifact from the build pipeline.

## Syntax

### __AllParameterSets

```
Remove-PSMDBuildArtifact [-Name] <string[]> [<CommonParameters>]
```

## Description

Removes an artifact from the build pipeline.
Only interacts with the PSModuleDevelopment build system.

## Examples

### EXAMPLE 1

```powershell
Remove-PSMDBuildArtifact -Name 'session'
```

Removes the artifact 'session' from the build pipeline.

### EXAMPLE 2

```powershell
Get-PSMDBuildArtifact -Tag pssession | Remove-PSMDBuildArtifact
```

Removes all artifacts with the 'pssession' tag from the build pipeline.

## Parameters

### Name

Name of the artifact to remove.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


