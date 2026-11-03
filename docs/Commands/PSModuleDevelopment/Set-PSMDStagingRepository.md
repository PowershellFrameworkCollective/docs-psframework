---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSMDStagingRepository
---

# Set-PSMDStagingRepository

## Synopsis

Define the repository to use for deploying modules along with scripts.

## Syntax

### Path

```
Set-PSMDStagingRepository -Path <string> [<CommonParameters>]
```

### Repository

```
Set-PSMDStagingRepository -Repository <string> [<CommonParameters>]
```

## Description

Define the repository to use for deploying modules along with scripts.
By default, modules are deployed using the PSGallery, which may be problematic:
- Offline computers do not have access to it
- Low performance compared to a local mirror

## Examples

### EXAMPLE 1

```powershell
Set-PSMDStagingRepository -Path 'C:\PowerShell\StagingRepo'
```

Registers the local path 'C:\PowerShell\StagingRepo' as a repository and will use it for deploying modules along with scripts.

## Parameters

### Path

The local path to use.
Will configure that path as a PSRepository.
The new repository will be named "PSMDStaging".

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

### Repository

The name of an existing repository to use

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Repository
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


