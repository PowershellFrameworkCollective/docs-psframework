---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSMDBuildStep
---

# Set-PSMDBuildStep

## Synopsis

Create or update a step from a build project.

## Syntax

### __AllParameterSets

```
Set-PSMDBuildStep [-Name] <string> [[-Weight] <int>] [[-Action] <string>]
 [[-Parameters] <hashtable>] [[-Condition] <string>] [[-ConditionSet] <string>]
 [[-Dependency] <string[]>] [[-BuildProject] <string>] [<CommonParameters>]
```

## Description

Create or update a step from a build project.

## Examples

### EXAMPLE 1

```powershell
Set-PSMDBuildStep -Name 'Create Session' -Action new-pssession -Parameters @{ VMName = 'labdc1'; CredentialPath = "%ProjectRoot%\creds\labdc1.cred";  }
```

Defines a new step named 'Create Session' using the 'new-pssession'-action.

## Parameters

### Action

The name of the action to execute.
Use Get-PSMDBuildAction to get a list of available actions.

```yaml
Type: System.String
DefaultValue: ''
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

### BuildProject

The build project file to work against.
Specify the full path to the build project file.
This parameter can be skipped if a default project file has been defined.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Condition

A PSFramework filter condition that must apply for this action to be executed successfully.
Example Conditions:
  Elevated
  PS7Plus -and OSWindows
More Details: https://psframework.org/documentation/documents/psframework/filters.html

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ConditionSet

The name of the condition set to use.
This is part of the PSFramework filter system:
https://psframework.org/documentation/documents/psframework/filters.html

Specify as "<module> <conditionsetname>" format.
Default Value: PSFramework Environment

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Dependency

Any other steps that must successfully finished in order for this step to execute.
ALL of the listed steps must have succeeded, skipped steps do not count.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the step.
All step names must be unique within a single build project.

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

### Parameters

The parameters this action should take.
See the action object to see a description of parameters, including which must be provided and which can be skipped.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Weight

The weight of the step.
Weight determines processing order, the lower the number the earlier it is executed.

```yaml
Type: System.Int32
DefaultValue: 0
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


