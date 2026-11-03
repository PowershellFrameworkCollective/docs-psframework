---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Resolve-PSMDBuildStepParameter
---

# Resolve-PSMDBuildStepParameter

## Synopsis

Resolves and consolidates the overall parameters of a given step.

## Syntax

### __AllParameterSets

```
Resolve-PSMDBuildStepParameter [-Parameters] <hashtable> [-FromArtifacts] <hashtable>
 [-ProjectName] <string> [-StepName] <string> [<CommonParameters>]
```

## Description

Resolves and consolidates the overall parameters of a given step.
This ensures that individual actions do not have to implement manual resolution and complex conditionals.
Sources of parameters:
- Explicitly defined parameter in the step
- Value from Artifacts
- Value from Configuration (only if not otherwise sourced)
- Value from implicit artifact resolution: Any value that is formatted like this:
  "%!NameOfArtifact!%" will be replaced with the value of the artifact of the same name.
  This supports wildcard resolution, so "%!Session.*!%" will resolve to all artifacts with a name starting with "Session."

Configuration-driven parameters follow this name scheme:
"PSModuleDevelopment.BuildParam.<project>.<step>.<parameterName>"

For example:
"PSModuleDevelopment.BuildParam.Admf.connect.credential"

## Examples

### EXAMPLE 1

```powershell
Resolve-PSMDBuildStepParameter -Parameters $actualParameters -ProjectName VMDeployment -StepName 'Create Session'
```

Adds parameters provided through configuration.

## Parameters

### FromArtifacts

The hashtable mapping parameters from artifacts.
This allows dynamically assigning artifacts to parameters.

```yaml
Type: System.Collections.Hashtable
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

### Parameters

The hashtable containing the currently specified parameters from the step configuration within the build project file.
Only settings not already defined there are taken from configuration.

```yaml
Type: System.Collections.Hashtable
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

### ProjectName

The name of the project being executed.
Supplementary parameters taken from configuration will pick up settings based on this name:
"PSModuleDevelopment.BuildParam.<ProjectName>.<StepName>.*"

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### StepName

The name of the step being executed.
Supplementary parameters taken from configuration will pick up settings based on this name:
"PSModuleDevelopment.BuildParam.<ProjectName>.<StepName>.*"

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


