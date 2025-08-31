---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Get-PSFModuleSignature

## SYNOPSIS
Verifies, whether a module is properly signed.

## SYNTAX

```
Get-PSFModuleSignature [-Path] <String[]> [<CommonParameters>]
```

## DESCRIPTION
Verifies, whether a module is properly signed.
Iterates over every module file and verifies its signature.

The result reports:
- Overall signing status
- Signatures not Timestamped count
- Status Summary
- Subject of signing certs summary
- Issuer of signing certs summary

A module should be considered signed, when ...
- the over signing status is valid
- the subjects are expected (A microsoft module being signed by a microsoft code signing cert, etc.)
- the issuer CAs are expected (A microsoft module being signed by a cert issued by Microsoft, etc.)

## EXAMPLES

### EXAMPLE 1
```
Get-PSFModuleSignature -Path .
```

Returns, whether the module in the current path is signed.

### EXAMPLE 2
```
Get-PSFModuleSignature -Path \\contoso.com\it\coding\modules\ContosoTools
```

Verifies the code signing of the module stored in \\\\contoso.com\it\coding\modules\ContosoTools

### EXAMPLE 3
```
Get-Module | Get-PSFModuleSignature
```

Verifies for each currently loaded module, whether they are signed.

## PARAMETERS

### -Path
Path to the module(s) to scan.
Should be the path to either a module-root or a psd1 file.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: ModuleBase, FullName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
