---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Save-PSFPowerShellGet

## SYNOPSIS
Downloads and provides the latest packages for both PowerShellGet V2 and V3.

## SYNTAX

```
Save-PSFPowerShellGet [[-Path] <String>] [<CommonParameters>]
```

## DESCRIPTION
Downloads and provides the latest packages for both PowerShellGet V2 and V3.
These can then be used by this module to deploy and bootstrap offline computers with package management tooling.

## EXAMPLES

### EXAMPLE 1
```
Save-PSFPowerShellGet
```

Downloads and deploys the latest version of Get V2 & V3 to "%AppData%/PowerShell/PSFramework/modules/PowerShellGet"

## PARAMETERS

### -Path
The path where to deploy the module packages as zip-files.
Must be a directory.
Defaults to: %AppData%/PowerShell/PSFramework/modules/PowerShellGet

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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
