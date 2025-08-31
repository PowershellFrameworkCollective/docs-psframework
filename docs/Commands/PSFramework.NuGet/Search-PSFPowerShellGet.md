---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Search-PSFPowerShellGet

## SYNOPSIS
Scan for available PowerShellGet versions.

## SYNTAX

```
Search-PSFPowerShellGet [-UseCache] [<CommonParameters>]
```

## DESCRIPTION
Scan for available PowerShellGet versions.
The module caches the availability of PowerShellGet features on import.
It also automatically updates those settings when it knows to do so.

However, if you change the configuration outside of the PSFramework.NuGet module,
you may need to manually trigger the scan for the module to take the changes into account.

For example, if you use Install-Module, rather than Install-PSFModule to install the
latest version of PowerShellGet, use this command to make the module aware of the fact.
Otherwise, this will automatically be run the next time the module is loaded.

## EXAMPLES

### EXAMPLE 1
```
Search-PSFPowerShellGet
```

Scan for available PowerShellGet versions.

## PARAMETERS

### -UseCache
Whether to respect the already available data and not do anything after all.
Mostly for internal use.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
