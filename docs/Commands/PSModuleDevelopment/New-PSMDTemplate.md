---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSMDTemplate
---

# New-PSMDTemplate

## Synopsis

Creates a template from a reference file / folder.

## Syntax

### Project

```
New-PSMDTemplate [-ReferencePath] <string> [[-TemplateName] <string>] [-Filter <string>]
 [-OutStore <string>] [-OutPath <string>] [-Exclusions <string[]>] [-Version <version>]
 [-Description <string>] [-Author <string>] [-Tags <string[]>] [-Force] [-EnableException]
 [<CommonParameters>]
```

### File

```
New-PSMDTemplate [-FilePath] <string> [-TemplateName] <string> [-Filter <string>]
 [-OutStore <string>] [-OutPath <string>] [-Exclusions <string[]>] [-Version <version>]
 [-Description <string>] [-Author <string>] [-Tags <string[]>] [-Force] [-EnableException]
 [<CommonParameters>]
```

## Description

This function creates a template based on an existing folder or file.
It automatically detects parameters that should be filled in one creation time.

# Template reference: #
#---------------------#
Project templates can be preconfigured by a special reference file in the folder root.
This file must be named "PSMDTemplate.ps1" and will not be part of the template.
It must emit a single hashtable with various pieces of information.

This hashtable can have any number of the following values, in any desired combination:
- Scripts: A Hashtable, of scriptblocks.
These are scripts used for replacement parameters, the key is the name used on insertions.
- TemplateName: Name of the template
- Version: The version number for the template (See AutoIncrementVersion property)
- AutoIncrementVersion: Whether the version number should be incremented
- Tags: Tags to add to a template - makes searching and finding templates easier
- Author: Name of the author of the template
- Description: Description of the template
- Exclusions: List of relative file/folder names to not process / skip.
Each of those entries can also be overridden by specifying the corresponding parameter of this function.

# Parameterizing templates: #
#---------------------------#
The script will pick up any parameter found in the files and folders (including the file/folder name itself).
There are three ways to do this:
- Named text replacement: The user will need to specify what to insert into this when creating a new project from this template.
- Scriptblock replacement: The included scriptblock will be executed on initialization, in order to provide a text to insert.
Duplicate scriptblocks will be merged.
- Named scriptblock replacement: The template reference file can define scriptblocks, their value will be inserted here.
The same name can be reused any number of times across the entire project, it will always receive the same input.

Naming Rules:
- Parameter names cannot include the characters '!', '{', or '}'
- Parameter names cannot include the parameter identifier.
This is by default 'þ'.
This identifier can be changed by updating the 'psmoduledevelopment.template.identifier' configuration setting.
- Names are not case sensitive.

Examples:
° Named for replacement:
"Test þnameþ" --> "Test <inserted text of parameter>"

° Scriptblock replacement:
"Test þ{ $env:COMPUTERNAME }þ" --> "Test <Name of invoking computer>"
- Important: No space between identifier and curly braces!
- Scriptblock can have multiple lines.

° Named Scriptblock replacement:
"Test þ!ClosestDomainController!þ" --> "Test <Result of script ClosestDomainController>"
- Named Scriptblocks are created by using a template reference file (see section above)

## Examples

### EXAMPLE 1

```powershell
New-PSMDTemplate -FilePath .\þnameþ.Test.ps1 -TemplateName functiontest
```

Creates a new template named 'functiontest', based on the content of '.\þnameþ.Test.ps1'

## Parameters

### Author

The author of the template.

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSModuleDevelopment.Template.ParameterDefault.Author' -Fallback $env:USERNAME)
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

### Description

A description text for the template itself.
This will be visible to the user before invoking the template and should describe what this template is for.

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

### EnableException

Replaces user friendly yellow warnings with bloody red exceptions of doom!
Use this if you want the function to throw terminating errors you want to catch.

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

### Exclusions

The relative path of the files or folders to ignore.
Ignoring folders will also ignore all items in the folder.

```yaml
Type: System.String[]
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

### FilePath

Path to a single file.
Used to create a template for that single file, instead of a full-blown project.
Note: Does not support template reference files.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: File
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Filter

Only files matching this filter will be included in the template.

```yaml
Type: System.String
DefaultValue: '*'
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

### Force

If the template in the specified version in the specified destination already exists, this will fail unless the Force parameter is used.

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

### OutPath

If the template should be written to a specific path instead.
Specify a folder.

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

### OutStore

Where the template will be stored at.
By default, it will push the template to the default store (A folder in appdata unless configuration was changed).

```yaml
Type: System.String
DefaultValue: Default
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

### ReferencePath

Root path in which all files are selected for creating a template project.
The folder will not be part of the template, only its content.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Project
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Tags

Tags to apply to the template, making it easier to filter & search.

```yaml
Type: System.String[]
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

### TemplateName

Name of the template.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: File
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Project
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Version

The version of the template.

```yaml
Type: System.Version
DefaultValue: 1.0.0.0
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


