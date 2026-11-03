---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSMDModuleNugetPackage
---

# New-PSMDModuleNugetPackage

## Synopsis

Creates a nuget package from a PowerShell module.

## Syntax

### __AllParameterSets

```
New-PSMDModuleNugetPackage [-ModulePath] <string[]> [[-PackagePath] <string>] [-EnableException]
 [<CommonParameters>]
```

## Description

This function will take a module and wrap it into a nuget package.
This is accomplished by creating a temporary local filesystem repository and using the PowerShellGet module to do the actual writing.

Note:
- Requires PowerShellGet module
- Dependencies must be built first to the same folder

## Examples

### EXAMPLE 1

```powershell
New-PSMDModuleNugetPackage -PackagePath 'c:\temp\package' -ModulePath .\DBOps
```

Packages the module stored in .\DBOps and stores the nuget file in 'c:\temp\package'

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

### ModulePath

Path to the PowerShell module you are creating a Nuget package from

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- ModuleBase
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PackagePath

Path where the package file will be copied.

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSModuleDevelopment.Package.Path' -Fallback "$env:TEMP")
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

## Notes

Author: Mark Wilkinson
Editor: Friedrich Weinmann



