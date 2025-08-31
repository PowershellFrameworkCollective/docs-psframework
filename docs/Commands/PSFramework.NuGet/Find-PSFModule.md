---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Find-PSFModule

## SYNOPSIS
Search for modules in PowerShell repositories.

## SYNTAX

### default (Default)
```
Find-PSFModule [[-Name] <String[]>] [[-Repository] <String[]>] [-Tag <String[]>] [-Credential <PSCredential>]
 [-AllowPrerelease] [-IncludeDependencies] [-Type <String>] [<CommonParameters>]
```

### Version
```
Find-PSFModule [[-Name] <String[]>] [[-Repository] <String[]>] [-Tag <String[]>] [-Credential <PSCredential>]
 [-AllowPrerelease] [-IncludeDependencies] [-Version <String>] [-Type <String>] [<CommonParameters>]
```

### AllVersions
```
Find-PSFModule [[-Name] <String[]>] [[-Repository] <String[]>] [-Tag <String[]>] [-Credential <PSCredential>]
 [-AllowPrerelease] [-IncludeDependencies] [-AllVersions] [-Type <String>] [<CommonParameters>]
```

## DESCRIPTION
Search for modules in PowerShell repositories.

## EXAMPLES

### EXAMPLE 1
```
Find-PSFModule -Name PSFramework
```

Search all configured repositories for the module "PSFramework"

## PARAMETERS

### -Name
Name(s) of the module(s) to look for.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Repository
The repositories to search in.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
Tags to search by.

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

### -Credential
Credentials to use to access repositories.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowPrerelease
Whether to include modules flagged as "Prerelease" as part of the results

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeDependencies
Whether to also list all required dependencies.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Version
Version constrains for the module to search.
Will use the latest version available within the limits.
Examples:
- "1.0.0": EXACTLY this one version
- "1.0.0-1.999.999": Any version between the two limits (including the limit values)
- "\[1.0.0-2.0.0)": Any version greater or equal to 1.0.0 but less than 2.0.0
- "2.3.0-": Any version greater or equal to 2.3.0.

Supported Syntax:
\<Prefix\>\<Version\>\<Connector\>\<Version\>\<Suffix\>

Prefix: "\[" (-ge) or "(" (-gt) or nothing (-ge)
Version: A valid version of 2-4 elements or nothing
Connector: A "," or a "-"
Suffix: "\]" (-le) or ")" (-lt) or nothing (-le)

```yaml
Type: String
Parameter Sets: Version
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllVersions
Whether all versions available should be returned together

```yaml
Type: SwitchParameter
Parameter Sets: AllVersions
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
What kind of repository to search in.
+ All: (default) Use all, irrespective of type
+ V2: Only search classic repositories, as would be returned by Get-PSRepository
+ V3: Only search modern repositories, as would be returned by Get-PSResourceRepository

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: All
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
