---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSMDBuildProject
---

# New-PSMDBuildProject

## Synopsis

Create a new build project file.

## Syntax

### default

```
New-PSMDBuildProject -Name <string> -Path <string> [-Condition <string>] [-ConditionSet <string>]
 [<CommonParameters>]
```

### NoSelect

```
New-PSMDBuildProject -Name <string> -Path <string> [-Condition <string>] [-ConditionSet <string>]
 [-NoSelect] [<CommonParameters>]
```

### Register

```
New-PSMDBuildProject -Name <string> -Path <string> [-Condition <string>] [-ConditionSet <string>]
 [-Register] [<CommonParameters>]
```

## Description

Create a new build project file.
Build projects are used to configure a repeatable, managed set of steps that make up a workflow.
It is designed with software build processes in mind, but can be used for pretty much anything that works in separate steps.

See the help on Invoke-PSMDBuildProject for more details.

NOTE: This is not the tool or component to create new PowerShell _code_ projects / repositories!
To create a new PowerShell module project, instead run:

	Invoke-PSMDTemplate PSFProject

## Examples

### EXAMPLE 1

```powershell
New-PSMDBuildProject -Name 'VMDeployment' -Path 'C:\Code\VMDeployment'
```

Create a new build project named 'VMDeployment' in the folder 'C:\Code\VMDeployment'

## Parameters

### Condition

A condition - a filter expression - that must be met in order for the build to proceed.
For more details on filter conditions, see the PSFramework documentation on its feature:
https://psframework.org/documentation/documents/psframework/filters.html

```yaml
Type: System.String
DefaultValue: ''
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

### ConditionSet

The name of the condition set to use.
This is part of the PSFramework filter system:
https://psframework.org/documentation/documents/psframework/filters.html

Specify as "<module> <conditionsetname>" format.
Default Value: PSFramework Environment

```yaml
Type: System.String
DefaultValue: PSFramework Environment
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

The name of the build project.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### NoSelect

Do not select the newly created build project as the default project for the current session.
By default, the newly created build project will be set as default project, in order to facilitate adding steps to it.
Use Select-PSMDBuildProject to explicitly set a default project file.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NoSelect
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

The path to the folder in which the build project file is created.
Final path will be: "<Path>\<Name>.build.json"

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Register

Persist the newly created build project as default build project beyond the current session.
By default, the newly created build project will already be set as default project, in order to facilitate adding steps to it.
But ONLY for the current session.
This parameter makes it remember in new PowerShell sessions as well.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Register
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


