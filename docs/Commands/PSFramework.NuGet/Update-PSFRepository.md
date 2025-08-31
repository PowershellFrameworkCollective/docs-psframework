---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Update-PSFRepository

## SYNOPSIS
Executes configured repository settings.

## SYNTAX

```
Update-PSFRepository [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Executes configured repository settings.
Using configuration settings - for example applied per GPO or configuration file - it is possible to define intended repositories.

The configuration settings must be named as 'PSFramework.NuGet.Repositories.\<Repository Name\>.\<Setting\>'

Available settings:
- Uri: Url or filesystem path to the repository.
Used for both install and publish.
- Priority: Priority of a PowerShell Repository.
Numeric value, determines repository precedence.
- Type: What kind of PowerShellGet version to apply the configuration to.
Details on the options below.
Defaults to 'Any'.
- Trusted: Whether the repository should be trusted.
Can be set to 0, 1, $false or $true.
Defaults to $true.
- Present: Whether the repository should exist at all.
Can be set to 0, 1, $false or $true.
Defaults to $true.
           Allows creating delete orders.
Does not differentiate between V2 & V3
   - Proxy: Link to the proxy to use.
Property only available when creating a new repository, not for updating an existing one.
  
   Supported "Type" settings to handle different PowerShellGet versions:
- Any: Will register as V3 if available, otherwise V2.
Will not update to V3 if already on V2.
- Update: Will register under highest version available, upgrading from older versions if already available on old versions
- All: Will register on ALL available versions
- V2: Will only register on V2.
V3 - if present and configured - will be unregistered.
- V2Preferred: Will only register on V2.
If V2 does not exist, existing V3 repositories will be allowed.
- V3: Will only register on V3.
If V2 is present, it will be unregistered, irrespective of whether V3 is available.

## EXAMPLES

### EXAMPLE 1
```
Update-PSFRepository
```

Executes configured repository settings, creating, updating and deleting repositories as defined.

## PARAMETERS

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
