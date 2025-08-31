---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Register-PSFSupportDataProvider

## SYNOPSIS
Registers additional data collection logic for the PSFramework Support Package.

## SYNTAX

```
Register-PSFSupportDataProvider [-Name] <String> [-ScriptBlock] <ScriptBlock> [<CommonParameters>]
```

## DESCRIPTION
Registers additional data collection logic for the PSFramework Support Package.
This allows your module to include its own debugging information for the support package.

This logic is used in the New-PSFSupportPackage command.

## EXAMPLES

### EXAMPLE 1
```
Register-PSFSupportDataProvider -Name MyModule.MyData -ScriptBlock $code
```

Registers the code in $code as a data provider for the support package.
In case of somebody running the "New-PSFSupportPackage" this code will be executed and its results included in the file.

## PARAMETERS

### -Name
Name of the support data provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
Code that generates support data.
Should provide information helpful with troubleshooting your code.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: True
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
