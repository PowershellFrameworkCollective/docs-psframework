---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PssModuleProject
---

# New-PssModuleProject

## Synopsis

Builds a Sapien PowerShell Studio Module Project from a regular module.

## Syntax

### Vanilla

```
New-PssModuleProject -Name <string> [-Path <string>] [-Force] [<CommonParameters>]
```

### Import

```
New-PssModuleProject -Name <string> -SourcePath <string> [-Path <string>] [-Force]
 [<CommonParameters>]
```

## Description

Builds a Sapien PowerShell Studio Module Project, either a clean one, or imports from a regular module.
Will ignore all hidden files and folders, will also ignore all files and folders in the root folder that start with a dot (".").

Importing from an existing module requires the module to have a valid manifest.

## Examples

### EXAMPLE 1

```powershell
New-PssModuleProject -Name 'Foo'
```

Creates a new module project named "Foo" in your default project folder.

### EXAMPLE 2

```powershell
New-PssModuleProject -Name dbatools -SourcePath "C:\Github\dbatools"
```

Imports the dbatools github repo's local copy into a new PSS module project in your default project folder.

### EXAMPLE 3

```powershell
New-PssModuleProject -name 'Northwind' -SourcePath "C:\Github\Northwind" -Path "C:\Projects" -Force
```

Will create a new module project, importing from "C:\Github\Northwind" and storing it in "C:\Projects".
It will overwrite any existing folder named "Northwind" in the destination folder.

## Parameters

### Force

Force causes the function to overwrite all stuff in the destination folder ($Path\$Name), if it already exists.

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

The name of the folder to create the project in.
Will also be used to name a blank module project.
(When importing a module into a project, the name will be taken from the manifest file).

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

### Path

The path to create the new module-project folder in.
Will default to the PowerShell Studio project folder.
The function will fail if PSS is not found on the system and no path was specified.

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

### SourcePath

The path to the module to import from.
Specify the path the the root folder the actual module files are in.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Import
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Notes

Author:      Friedrich Weinmann
Editors:     -
Created on:  01.03.2017
Last Change: 01.03.2017
Version:     1.0

Release 1.0 (01.03.2017, Friedrich Weinmann)
- Initial Release



