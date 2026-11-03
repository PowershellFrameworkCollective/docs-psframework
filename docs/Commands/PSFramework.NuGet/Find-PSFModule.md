---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Find-PSFModule
---

# Find-PSFModule

## Synopsis

Search for modules in PowerShell repositories.

## Syntax

### default

```
Find-PSFModule [[-Name] <string[]>] [[-Repository] <string[]>] [-Tag <string[]>]
 [-Credential <pscredential>] [-AllowPrerelease] [-IncludeDependencies] [-Type <string>]
 [<CommonParameters>]
```

### Version

```
Find-PSFModule [[-Name] <string[]>] [[-Repository] <string[]>] [-Tag <string[]>]
 [-Credential <pscredential>] [-AllowPrerelease] [-IncludeDependencies] [-Version <string>]
 [-Type <string>] [<CommonParameters>]
```

### AllVersions

```
Find-PSFModule [[-Name] <string[]>] [[-Repository] <string[]>] [-Tag <string[]>]
 [-Credential <pscredential>] [-AllowPrerelease] [-IncludeDependencies] [-AllVersions]
 [-Type <string>] [<CommonParameters>]
```

## Description

Search for modules in PowerShell repositories.

## Examples

### EXAMPLE 1

```powershell
Find-PSFModule -Name PSFramework
```

Search all configured repositories for the module "PSFramework"

## Parameters

### AllowPrerelease

Whether to include modules flagged as "Prerelease" as part of the results

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

### AllVersions

Whether all versions available should be returned together

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllVersions
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Credential

Credentials to use to access repositories.

```yaml
Type: System.Management.Automation.PSCredential
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

### IncludeDependencies

Whether to also list all required dependencies.

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

Name(s) of the module(s) to look for.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Repository

The repositories to search in.

```yaml
Type: System.String[]
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

### Tag

Tags to search by.

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

### Type

What kind of repository to search in.
+ All: (default) Use all, irrespective of type
+ V2: Only search classic repositories, as would be returned by Get-PSRepository
+ V3: Only search modern repositories, as would be returned by Get-PSResourceRepository

```yaml
Type: System.String
DefaultValue: All
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

### Version

Version constrains for the module to search.
Will use the latest version available within the limits.
Examples:
- "1.0.0": EXACTLY this one version
- "1.0.0-1.999.999": Any version between the two limits (including the limit values)
- "[1.0.0-2.0.0)": Any version greater or equal to 1.0.0 but less than 2.0.0
- "2.3.0-": Any version greater or equal to 2.3.0.

Supported Syntax:
<Prefix><Version><Connector><Version><Suffix>

Prefix: "[" (-ge) or "(" (-gt) or nothing (-ge)
Version: A valid version of 2-4 elements or nothing
Connector: A "," or a "-"
Suffix: "]" (-le) or ")" (-lt) or nothing (-le)

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Version
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


