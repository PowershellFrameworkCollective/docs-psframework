---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Find-PSMDFileContent
---

# Find-PSMDFileContent

## Synopsis

Used to quickly search in module files.

## Syntax

### __AllParameterSets

```
Find-PSMDFileContent [-Pattern] <string> [-Extension <string>] [-Path <string>] [-EnableException]
 [<CommonParameters>]
```

## Description

This function can be used to quickly search files in your module's path.
By using Set-PSMDModulePath (or Set-PSFConfig 'PSModuleDevelopment.Module.Path' '<path>') you can set the default path to search in.
Using
  Register-PSFConfig -FullName 'PSModuleDevelopment.Module.Path'
allows you to persist this setting across sessions.

## Examples

### EXAMPLE 1

```powershell
Find-PSMDFileContent -Pattern 'Get-Test'
```

Searches all module files for the string 'Get-Test'.

## Parameters

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

### Extension

The extension of files to consider.
Only files with this extension will be searched.

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSModuleDevelopment.Find.DefaultExtensions')
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

The path to use as search base.
Defaults to the path found in the setting 'PSModuleDevelopment.Module.Path'

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSModuleDevelopment.Module.Path')
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

### Pattern

The text to search for, can be any regex pattern

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


