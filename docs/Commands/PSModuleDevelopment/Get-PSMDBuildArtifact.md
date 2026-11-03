---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDBuildArtifact
---

# Get-PSMDBuildArtifact

## Synopsis

Retrieve an artifact during a build project's execution.

## Syntax

### __AllParameterSets

```
Get-PSMDBuildArtifact [[-Name] <string>] [[-Tag] <string[]>] [<CommonParameters>]
```

## Description

Retrieve an artifact during a build project's execution.
These artifacts are usually created during such an execution and discarded once completed.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDBuildArtifact
```

List all available artifacts.

### EXAMPLE 2

```powershell
Get-PSMDBuildArtifact -Name ReleasePath
```

Returns the artifact named "ReleasePath"

### EXAMPLE 3

```powershell
Get-PSMDBuildArtifact -Tag pssession
```

Returns all artifacts with the tag "pssession"

## Parameters

### Name

The name by which to search for artifacts.
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

### Tag

Search for artifacts by tag.
Artifacts can receive tag for better categorization.
When specifying multiple tags, any artifact containing at least one of them will be returned.

```yaml
Type: System.String[]
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


