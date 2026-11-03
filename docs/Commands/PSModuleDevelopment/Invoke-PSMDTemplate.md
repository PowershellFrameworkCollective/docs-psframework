---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSMDTemplate
---

# Invoke-PSMDTemplate

## Synopsis

Creates a project/file from a template.

## Syntax

### NamePath

```
Invoke-PSMDTemplate [-TemplateName] <string> [[-Name] <string>] [[-OutPath] <string>] -Path <string>
 [-Encoding <EncodingParameter>] [-NoFolder] [-Parameters <hashtable>] [-Raw] [-GenerateObjects]
 [-Force] [-Silent] [-NoConfigFile] [-EnableException] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### NameStore

```
Invoke-PSMDTemplate [-TemplateName] <string> [[-Name] <string>] [[-OutPath] <string>]
 [-Store <string>] [-Encoding <EncodingParameter>] [-NoFolder] [-Parameters <hashtable>] [-Raw]
 [-GenerateObjects] [-Force] [-Silent] [-NoConfigFile] [-EnableException] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Template

```
Invoke-PSMDTemplate [[-Name] <string>] [[-OutPath] <string>] -Template <TemplateInfo[]>
 [-Encoding <EncodingParameter>] [-NoFolder] [-Parameters <hashtable>] [-Raw] [-GenerateObjects]
 [-Force] [-Silent] [-NoConfigFile] [-EnableException] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

This function takes a template and turns it into a finished file&folder structure.
It does so by creating the files and folders stored within, replacing all parameters specified with values provided by the user.

Missing parameters will be prompted for.

## Examples

### EXAMPLE 1

```powershell
Invoke-PSMDTemplate -TemplateName "module"
```

Creates a project based on the module template in the current folder, asking for all details.

### EXAMPLE 2

```powershell
Invoke-PSMDTemplate -TemplateName "module" -Name "MyModule"
```

Creates a project based on the module template with the name "MyModule"

### EXAMPLE 3

```powershell
Invoke-PSMDTemplate MiniModule -Parameters @{ Author = 'Fred' }
```

Creates a new project based on the template MiniModule and predefines the value for the "Author" placeholder.

## Parameters

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

### Encoding

The encoding to apply to text files.
The default setting for this can be configured by updating the 'PSFramework.Text.Encoding.DefaultWrite' configuration setting.
The initial default value is utf8 with BOM.

```yaml
Type: PSFramework.Parameter.EncodingParameter
DefaultValue: (Get-PSFConfigValue -FullName 'PSFramework.Text.Encoding.DefaultWrite')
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

If the target path the template should be written to (filename or folder name within $OutPath), then overwrite it.
By default, this function will fail if an overwrite is required.

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

### GenerateObjects

By default, Invoke-PSMDTemplate generates files.
In GenerateObjects mode, no file but objects are created.

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

The name of the produced output.
Automatically inserted for any name parameter specified on creation.
Also used for creating a root folder, when creating a project.

```yaml
Type: System.String
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

### NoConfigFile

By default, this command will look in the execution path and above for files named "PSMDConfig.psd1" to populate template parameters from.

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

### NoFolder

Skip automatic folder creation for project templates.
By default, this command will create a folder to place files&folders in when creating a project.

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

The path in which to create the output.
By default, it will create in the current directory.

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSModuleDevelopment.Template.OutPath' -Fallback ".")
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

### Parameters

A Hashtable containing parameters for use in creating the template.

```yaml
Type: System.Collections.Hashtable
DefaultValue: '@{ }'
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

### Path

Instead of a registered store, look in this path for templates.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NamePath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Raw

By default, all parameters will be replaced during invocation.
In Raw mode, this is skipped, reproducing mostly the original template input (dynamic scriptblocks will now be named scriptblocks)).

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

### Silent

This places the function in unattended mode, causing it to error on anything requiring direct user input.

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

### Store

The template store to retrieve tempaltes from.
By default, all stores are queried.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NameStore
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Template

The template object to build from.
Accepts objects returned by Get-PSMDTemplate.

```yaml
Type: PSModuleDevelopment.Template.TemplateInfo[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Template
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TemplateName

The name of the template to build from.
Warning: This does wildcard interpretation, don't specify '*' unless you like answering parameter prompts.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NamePath
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: NameStore
  Position: 0
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


