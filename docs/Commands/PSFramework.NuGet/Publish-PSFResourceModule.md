---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Publish-PSFResourceModule

## SYNOPSIS
Publishes a pseudo-module, the purpose of which is to transport arbitrary files & folders.

## SYNTAX

### ToRepository (Default)
```
Publish-PSFResourceModule [-Name <String>] [-Version <String>] -Path <PathFileSystemParameter>
 -Repository <String[]> [-Type <String>] [-Credential <PSCredential>] [-ApiKey <String>]
 [-SkipDependenciesCheck] [-RequiredModules <Object[]>] [-Description <String>] [-Author <String>]
 [-Tags <String[]>] [-LicenseUri <String>] [-IconUri <String>] [-ProjectUri <String>] [-ReleaseNotes <String>]
 [-Prerelease <String>] [<CommonParameters>]
```

### ToPath
```
Publish-PSFResourceModule [-Name <String>] [-Version <String>] -Path <PathFileSystemParameter>
 -DestinationPath <PathDirectoryParameter> [-RequiredModules <Object[]>] [-Description <String>]
 [-Author <String>] [-Tags <String[]>] [-LicenseUri <String>] [-IconUri <String>] [-ProjectUri <String>]
 [-ReleaseNotes <String>] [-Prerelease <String>] [<CommonParameters>]
```

## DESCRIPTION
Publishes a pseudo-module, the purpose of which is to transport arbitrary files & folders.
This allows using nuget repositories to distribute arbitrary files, not bound to its direct PowerShell
use as "Publish-PSFModule" would enforce.

For example, with this, a templating engine could offer commands such as:
- Publish-Template
- Install-Template
- Update-Template

## EXAMPLES

### EXAMPLE 1
```
Publish-PSFResourceModule -Name Psmd.Template.MyFunction -Version 1.1.0 -Path .\MyFunction\* -Repository PSGallery -ApiKey $key
```

Publishes all files under the MyFunction folder to the PSGallery.
The resource module will be named "Psmd.Template.MyFunction" and versioned as '1.1.0'

## PARAMETERS

### -Name
Name of the module to create.

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

### -Version
Version of the module to create.
Defaults to "1.0.0".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 1.0.0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Path to the files and folders to include.

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

### -RequiredModules
The modules your resource module requires.
These dependencies will be treated as Resoource modules as well, not regular modules.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Description of your resource module.
Will be shown in repository services hosting it.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: <Dummy Description>
Accept pipeline input: False
Accept wildcard characters: False
```

### -Author
The author of your resource module.
Defaults to your user name.

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

### -Tags
Tags to include in your resource module.

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
Link to the license governing your resource module.

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
Link to the icon to present in the PSGallery.

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
Link to the project your resources originate from.
Used in the PSGallery to guide visitors to more information.

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
Release notes for your resource module.
Or at least a link to them.

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
The prerelease flag to tag your resource module under.
This allows hiding it from most users.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
