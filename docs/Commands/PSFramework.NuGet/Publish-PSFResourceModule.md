---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Publish-PSFResourceModule
---

# Publish-PSFResourceModule

## Synopsis

Publishes a pseudo-module, the purpose of which is to transport arbitrary files & folders.

## Syntax

### ToRepository

```
Publish-PSFResourceModule -Path <PathFileSystemParameter> -Repository <string[]> [-Name <string>]
 [-Version <string>] [-Type <string>] [-Credential <pscredential>] [-ApiKey <string>]
 [-SkipDependenciesCheck] [-RequiredModules <Object[]>] [-Description <string>] [-Author <string>]
 [-Tags <string[]>] [-LicenseUri <string>] [-IconUri <string>] [-ProjectUri <string>]
 [-ReleaseNotes <string>] [-Prerelease <string>] [<CommonParameters>]
```

### ToPath

```
Publish-PSFResourceModule -Path <PathFileSystemParameter> -DestinationPath <PathDirectoryParameter>
 [-Name <string>] [-Version <string>] [-RequiredModules <Object[]>] [-Description <string>]
 [-Author <string>] [-Tags <string[]>] [-LicenseUri <string>] [-IconUri <string>]
 [-ProjectUri <string>] [-ReleaseNotes <string>] [-Prerelease <string>] [<CommonParameters>]
```

## Description

Publishes a pseudo-module, the purpose of which is to transport arbitrary files & folders.
This allows using nuget repositories to distribute arbitrary files, not bound to its direct PowerShell
use as "Publish-PSFModule" would enforce.

For example, with this, a templating engine could offer commands such as:
- Publish-Template
- Install-Template
- Update-Template

## Examples

### EXAMPLE 1

```powershell
Publish-PSFResourceModule -Name Psmd.Template.MyFunction -Version 1.1.0 -Path .\MyFunction\* -Repository PSGallery -ApiKey $key
```

Publishes all files under the MyFunction folder to the PSGallery.
The resource module will be named "Psmd.Template.MyFunction" and versioned as '1.1.0'

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

### Author

The author of your resource module.
Defaults to your user name.

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

### Description

Description of your resource module.
Will be shown in repository services hosting it.

```yaml
Type: System.String
DefaultValue: <Dummy Description>
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

Link to the icon to present in the PSGallery.

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

Link to the license governing your resource module.

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

### Name

Name of the module to create.

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

Path to the files and folders to include.

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

The prerelease flag to tag your resource module under.
This allows hiding it from most users.

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

Link to the project your resources originate from.
Used in the PSGallery to guide visitors to more information.

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

Release notes for your resource module.
Or at least a link to them.

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

### RequiredModules

The modules your resource module requires.
These dependencies will be treated as Resoource modules as well, not regular modules.

```yaml
Type: System.Object[]
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

Tags to include in your resource module.

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

### Version

Version of the module to create.
Defaults to "1.0.0".

```yaml
Type: System.String
DefaultValue: 1.0.0
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


