---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Publish-PSFModule
---

# Publish-PSFModule

## Synopsis

Publish a PowerShell module.

## Syntax

### ToRepository

```
Publish-PSFModule -Path <PathFileSystemParameter> -Repository <string[]> [-Type <string>]
 [-Credential <pscredential>] [-ApiKey <string>] [-SkipDependenciesCheck] [-Tags <string[]>]
 [-LicenseUri <string>] [-IconUri <string>] [-ProjectUri <string>] [-ReleaseNotes <string>]
 [-Prerelease <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ToPath

```
Publish-PSFModule -Path <PathFileSystemParameter> -DestinationPath <PathDirectoryParameter>
 [-Tags <string[]>] [-LicenseUri <string>] [-IconUri <string>] [-ProjectUri <string>]
 [-ReleaseNotes <string>] [-Prerelease <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

Publish a PowerShell module.
Allows publishing to either nuget repositories or as .nupkg file to disk.

## Examples

### EXAMPLE 1

```powershell
Publish-PSFModule -Path C:\code\MyModule -Repository PSGallery -ApiKey $key
```

Publishes the module "MyModule" to the PSGallery.

### EXAMPLE 2

```powershell
Publish-PSFModule -Path C:\code\MyModule -Repository AzDevOps -Credential $cred -SkipDependenciesCheck
```

Publishes the module "MyModule" to the repository "AzDevOps".
It will not check for any dependencies and use the credentials stored in $cred to authenticate the request.

### EXAMPLE 3

```powershell
Publish-PSFModule -Path C:\code\MyModule -Repository AzDevOps -SkipDependenciesCheck
```

Publishes the module "MyModule" to the repository "AzDevOps".
It will not check for any dependencies.
If there are any credentials assigned to the repository (Use Set-PSFRepository to assign), those will be used to authenticate the request.
Otherwise it will try default windows authentication (Which may well work, if the repository is hosted by an on-prem Azure DevOps Server in an Active Directory environment).

### EXAMPLE 4

```powershell
Publish-PSFModule -Path C:\code\MyModule -DestinationPath \\contoso.com\it\packages
```

Wraps the module "MyModule" into a .nupkg file and copies that to '\\contoso.com\it\packages'

## Parameters

### ApiKey

The ApiKey to use to authenticate to the Nuget service.
Mostly used for publishing to the PSGallery.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ToRepository
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
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

### Credential

The credentials to use to authenticate to the Nuget service.
Mostly used for internal repository servers.

```yaml
Type: System.Management.Automation.PSCredential
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ToRepository
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### DestinationPath

Rather than publish to a repository, place the finished .nupgk file in this path.
Use when doing the final publish step outside of PowerShell code.

```yaml
Type: PSFramework.Parameter.PathDirectoryParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ToPath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### IconUri

The Icon Uri for the module.
Mostly used as metadata for the PSGallery.

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

### LicenseUri

The LicenseUri for the module.
Mostly used as metadata for the PSGallery.

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

### Path

The path to the module to publish.
Either the directory or the psd1 file.

```yaml
Type: PSFramework.Parameter.PathFileSystemParameter
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

### Prerelease

The prerelease tag to include.
This flags the module as "Prerelease", hiding it from regular Find-PSFModule / Install-PSFModule use.
Use to provide test versions that only affect those in the know.

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

### ProjectUri

The Link to the project - frequently the Github repository hosting your module.
Mostly used as metadata for the PSGallery.

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

### ReleaseNotes

The release notes of your module - or at least the link to them.
Mostly used as metadata for the PSGallery.

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

### Repository

The repository to publish to.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ToRepository
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### SkipDependenciesCheck

Do not validate dependencies or the module manifest.
This removes the need to have the dependencies installed when publishing using PSGet v2

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ToRepository
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Tags

Tags to add to the module.

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

What kind of repository to publish to.
- All (default): All types of repositories are eligible.
- V2: Only repositories from the old PowerShellGet are eligible.
- V3: Only repositories from the new PSResourceGet are eligible.
If multiple repositories of the same name are found, the one at the highest version among them is chosen.

```yaml
Type: System.String
DefaultValue: All
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ToRepository
  Position: Named
  IsRequired: false
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


