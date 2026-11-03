---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Publish-PSMDStagedModule
---

# Publish-PSMDStagedModule

## Synopsis

Publish a module to your staging repository.

## Syntax

### Name

```
Publish-PSMDStagedModule -Name <string> [-Repository <string>] [-EnableException]
 [<CommonParameters>]
```

### Path

```
Publish-PSMDStagedModule -Path <string> [-EnableException] [<CommonParameters>]
```

## Description

Publish a module to your staging repository.
Always publishes the latest version available when specifying a name.

## Examples

### EXAMPLE 1

```powershell
Publish-PSMDStagedModule -Name 'PSFramework'
```

Publishes the latest version of PSFramework found on the local machine.

### EXAMPLE 2

```powershell
Publish-PSMDStagedModule -Name 'Microsoft.Graph' -Repository PSGallery
```

Publishes the entire kit of 'Microsoft.Graph' modules from the PSGallery to the staging repository.

## Parameters

### EnableException

This parameters disables user-friendly warnings and enables the throwing of exceptions.
This is less user friendly, but allows catching exceptions in calling scripts.

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

### Name

The name of the module to publish.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Path

The path to the module to publish.

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

The repository from which to withdraw the module to then publish to the staging repository.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


