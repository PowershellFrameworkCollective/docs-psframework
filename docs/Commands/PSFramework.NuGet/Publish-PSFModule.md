---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Publish-PSFModule

## SYNOPSIS
Publish a PowerShell module.

## SYNTAX

### ToRepository (Default)
```
Publish-PSFModule -Path <PathFileSystemParameter> -Repository <String[]> [-Type <String>]
 [-Credential <PSCredential>] [-ApiKey <String>] [-SkipDependenciesCheck] [-Tags <String[]>]
 [-LicenseUri <String>] [-IconUri <String>] [-ProjectUri <String>] [-ReleaseNotes <String>]
 [-Prerelease <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ToPath
```
Publish-PSFModule -Path <PathFileSystemParameter> -DestinationPath <PathDirectoryParameter> [-Tags <String[]>]
 [-LicenseUri <String>] [-IconUri <String>] [-ProjectUri <String>] [-ReleaseNotes <String>]
 [-Prerelease <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Publish a PowerShell module.
Allows publishing to either nuget repositories or as .nupkg file to disk.

## EXAMPLES

### EXAMPLE 1
```
Publish-PSFModule -Path C:\code\MyModule -Repository PSGallery -ApiKey $key
```

Publishes the module "MyModule" to the PSGallery.

### EXAMPLE 2
```
Publish-PSFModule -Path C:\code\MyModule -Repository AzDevOps -Credential $cred -SkipDependenciesCheck
```

Publishes the module "MyModule" to the repository "AzDevOps".
It will not check for any dependencies and use the credentials stored in $cred to authenticate the request.

### EXAMPLE 3
```
Publish-PSFModule -Path C:\code\MyModule -Repository AzDevOps -SkipDependenciesCheck
```

Publishes the module "MyModule" to the repository "AzDevOps".
It will not check for any dependencies.
If there are any credentials assigned to the repository (Use Set-PSFRepository to assign), those will be used to authenticate the request.
Otherwise it will try default windows authentication (Which may well work, if the repository is hosted by an on-prem Azure DevOps Server in an Active Directory environment).

### EXAMPLE 4
```
Publish-PSFModule -Path C:\code\MyModule -DestinationPath \\contoso.com\it\packages
```

Wraps the module "MyModule" into a .nupkg file and copies that to '\\\\contoso.com\it\packages'

## PARAMETERS

### -Path
The path to the module to publish.
Either the directory or the psd1 file.

```yaml
Type: PathFileSystemParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Repository
The repository to publish to.

```yaml
Type: String[]
Parameter Sets: ToRepository
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
What kind of repository to publish to.
- All (default): All types of repositories are eligible.
- V2: Only repositories from the old PowerShellGet are eligible.
- V3: Only repositories from the new PSResourceGet are eligible.
If multiple repositories of the same name are found, the one at the highest version among them is chosen.

```yaml
Type: String
Parameter Sets: ToRepository
Aliases:

Required: False
Position: Named
Default value: All
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential
The credentials to use to authenticate to the Nuget service.
Mostly used for internal repository servers.

```yaml
Type: PSCredential
Parameter Sets: ToRepository
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApiKey
The ApiKey to use to authenticate to the Nuget service.
Mostly used for publishing to the PSGallery.

```yaml
Type: String
Parameter Sets: ToRepository
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipDependenciesCheck
Do not validate dependencies or the module manifest.
This removes the need to have the dependencies installed when publishing using PSGet v2

```yaml
Type: SwitchParameter
Parameter Sets: ToRepository
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DestinationPath
Rather than publish to a repository, place the finished .nupgk file in this path.
Use when doing the final publish step outside of PowerShell code.

```yaml
Type: PathDirectoryParameter
Parameter Sets: ToPath
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Tags to add to the module.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LicenseUri
The LicenseUri for the module.
Mostly used as metadata for the PSGallery.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IconUri
The Icon Uri for the module.
Mostly used as metadata for the PSGallery.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectUri
The Link to the project - frequently the Github repository hosting your module.
Mostly used as metadata for the PSGallery.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReleaseNotes
The release notes of your module - or at least the link to them.
Mostly used as metadata for the PSGallery.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prerelease
The prerelease tag to include.
This flags the module as "Prerelease", hiding it from regular Find-PSFModule / Install-PSFModule use.
Use to provide test versions that only affect those in the know.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
If this switch is enabled, no actions are performed but informational messages will be displayed that explain what would happen if the command were to run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
If this switch is enabled, you will be prompted for confirmation before executing any operations that change state.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
