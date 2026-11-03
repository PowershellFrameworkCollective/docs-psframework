---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Publish-PSMDScriptFile
---

# Publish-PSMDScriptFile

## Synopsis

Packages a script with all dependencies and "publishes" it as a zip package.

## Syntax

### __AllParameterSets

```
Publish-PSMDScriptFile [-Path] <string> [[-OutPath] <string>] [-EnableException]
 [<CommonParameters>]
```

## Description

Packages a script with all dependencies and "publishes" it as a zip package.
By default, it will be published to the user's desktop.
All modules it uses will be parsed from the script:
- Commands that cannot be resolved will trigger a warning.
- Modules that are installed in the Windows folder (such as the ActiveDirectory module or other modules associated with server roles) will be ignored.
- PSSnapins will be ignored
- All other modules determined by the commands used will be provided from a repository, packaged in a subfolder and included in the zip file.

If needed, the scriptfile will be modified to add the new modules folder to its list of known folders.
(The source file itself will never be modified)

Use Set-PSMDStagingRepository to create / use a local path for staging modules to provide that way.
This gives you better control over the versions used and better performance.
Also the ability to use this with non-public modules.
Use Publish-PSMDStagedModule to transfer modules from path or another repository into your registered staging repository.

## Examples

### EXAMPLE 1

```powershell
Publish-PSMDScriptFile -Path 'C:\scripts\logrotate.ps1'
```

Creates a delivery package for the logrotate.ps1 scriptfile and places it on the desktop

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

### OutPath

The path to the folder where the output zip file will be created.
Defaults to the user's desktop.

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSModuleDevelopment.Script.OutPath')
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

### Path

Path to the scriptfile to publish.
The scriptfile is expected to be UTF8 encoded with BOM, otherwise some characters may end up broken.

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


