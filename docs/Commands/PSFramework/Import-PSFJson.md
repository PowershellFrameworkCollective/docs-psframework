---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Import-PSFJson

## SYNOPSIS
Imports a json document from file and offers its content as objects.

## SYNTAX

```
Import-PSFJson [[-Path] <PathFileLaxParameter>] [[-LiteralPath] <PathLiteralParameter>]
 [[-Encoding] <EncodingParameter>] [-AsHashtable] [-FixData] [<CommonParameters>]
```

## DESCRIPTION
Imports a json document from file and offers its content as objects.

WARNING: The FixData parameter is experimental and may experience breaking changes!

## EXAMPLES

### EXAMPLE 1
```
Import-PSFJson .\policies.json
```

Reads the content of policies.json, parses its structure and returns objects representing its content.

## PARAMETERS

### -Path
Path to the file to import.
Will evaluate wildcards.

```yaml
Type: PathFileLaxParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -LiteralPath
Path to the file to import.
Will NOT evaluate wildcards.

```yaml
Type: PathLiteralParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encoding
The encoding of the file to read.
Defaults to UTF8.

```yaml
Type: EncodingParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: UTF8
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsHashtable
Return content as hashtable, rather than PSCustomObject

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

### -FixData
EXPERIMENTAL PARAMETER, MAY SUFFER BREAKING CHANGES
Attempt to fix broken data from the data processed.
Assumes the json was originally generated through PowerShell and tries to detect and fix issues that happened during export.
Most notably: Timestamps no longer being proper timestamps.

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
