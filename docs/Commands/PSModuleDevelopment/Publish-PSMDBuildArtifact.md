---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Publish-PSMDBuildArtifact
---

# Publish-PSMDBuildArtifact

## Synopsis

Create a new artifact for the current build pipeline.

## Syntax

### __AllParameterSets

```
Publish-PSMDBuildArtifact [-Name] <string> [-Value] <Object> [[-Tag] <string[]>]
 [<CommonParameters>]
```

## Description

Create a new artifact for the current build pipeline.
Use this create artifacts that are accessible in later steps in the pipeline.

Usually, artifacts are deleted at the end of a build process.
They are always cleared at the beginning of a new one.

Artifacts are NOT persisted across PowerShell sessions.

## Examples

### EXAMPLE 1

```powershell
Publish-PSMDBuildArtifact -Name 'session' -Value $session -Tag 'pssession'
```

Publishes an artifact named "session" containing the content of $session that is tagged as a PowerShell remoting session.

## Parameters

### Name

Name of the Artifact to create.
Technically there are no limits to which character to chose, but we strongly encourage restricting yourself to letters, numbers, dash, underscore and dot.

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

### Tag

Any tags to add to an artifact.
Tags can be searched for in order to bulk-operate against all artifacts of that tag.
For example, the "remove-pssession" action can remove all remoting sessions for all artifacts tagged as "pssession".

```yaml
Type: System.String[]
DefaultValue: '@()'
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

### Value

The value to assign to the artifact.

```yaml
Type: System.Object
DefaultValue: ''
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


