---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSMDDotNetProject
---

# New-PSMDDotNetProject

## Synopsis

Wrapper function around 'dotnet new'

## Syntax

### Create

```
New-PSMDDotNetProject [-TemplateName] <string> [[-Name] <string>] [[-Output] <string>] [-Help]
 [-Force] [-Arguments <string[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### List

```
New-PSMDDotNetProject [[-TemplateName] <string>] [-List] [-Help] [-Force] [-Arguments <string[]>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Install

```
New-PSMDDotNetProject -Install <string> [-Help] [-Force] [-Arguments <string[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Uninstall

```
New-PSMDDotNetProject -Uninstall <string> [-Help] [-Force] [-Arguments <string[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## Description

This function is a wrapper around the dotnet.exe application with the parameter 'new'.
It can be used to create projects from templates, as well as to administrate templates.

## Examples

### EXAMPLE 1

```powershell
dotnetnew -l
```

Lists all installed templates.

### EXAMPLE 2

```powershell
dotnetnew mvc foo F:\temp\projects\foo -au Windows --no-restore
```

Creates a new MVC project named "foo" in folder "F:\Temp\projects\foo"
- It will set authentication to windows
- It will skip the automatic restore of the project on create

## Parameters

### Arguments

Additional arguments to pass to the application.
Generally used for parameters when creating a project from a template.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- a
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: true
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Confirm

If this switch is enabled, you will be prompted for confirmation before executing any operations that change state.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### Force

Overwrite existing files.

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

### Help

Ask for help / documentation.
Particularly useful when dealing with project types that have a lot of options.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- h
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

### Install

Install the specified template from the VS marketplace.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- i
ParameterSets:
- Name: Install
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### List

List the existing templates.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- l
ParameterSets:
- Name: List
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

The name of the project to create

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- n
ParameterSets:
- Name: Create
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Output

The folder in which to create it.
Note: This folder will automatically be te root folder of the project.
If this folder doesn't exist yet, it will be created.
When used with -Force, it will automatically purge all contents.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- o
ParameterSets:
- Name: Create
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TemplateName

The name of the template to create

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: List
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Create
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Uninstall

Uninstall an installed template.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- u
ParameterSets:
- Name: Uninstall
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### WhatIf

If this switch is enabled, no actions are performed but informational messages will be displayed that explain what would happen if the command were to run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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


