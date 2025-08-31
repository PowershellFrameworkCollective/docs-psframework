---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Get-PSFPowerShellGet

## SYNOPSIS
Returns the availability state for PowerShellGet.

## SYNTAX

```
Get-PSFPowerShellGet [[-ComputerName] <ComputerParameter[]>] [[-Credential] <PSCredential>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the availability state for PowerShellGet.
Will verify, whether required prerequisites for module installation or publishing exist
for v1/v2 versions of PowerShellGet.
It will only check for the all users configuration, ignoring binaries stored in appdata.

## EXAMPLES

### EXAMPLE 1
```
Get-PSFPowerShellGet
```

Returns, what the local PowerShellGet configuration is like.

## PARAMETERS

### -ComputerName
The computer to scan.
Defaults to localhost.

```yaml
Type: ComputerParameter[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: $env:COMPUTERNAME
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Credential
Credentials to use for the connection to the remote computers.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
