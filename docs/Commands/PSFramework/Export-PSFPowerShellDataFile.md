---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Export-PSFPowerShellDataFile

## SYNOPSIS
Exports data into psd1 config files.

## SYNTAX

```
Export-PSFPowerShellDataFile [-Path] <PathNewFileParameter> [[-Depth] <Int32>]
 [[-Encoding] <EncodingParameter>] [-EnableVerbose] [[-Configuration] <Hashtable>] [-InputObject] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Exports data into psd1 config files.

Use Register-PSFPsd1Converter to extend/customize how this conversion happens.

## EXAMPLES

### EXAMPLE 1
```
Get-ChildItem | Export-PSFPowerShellDataFile -Path .\files.psd1
```

Takes all files and folders and converts the data into psd1-style data structures, then write that to "files.psd1" in the current path..

## PARAMETERS

### -Path
The path where to write to.
The parent folder must exist.
May provide multiple paths.

```yaml
Type: PathNewFileParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Depth
How many levels deep do you want to process sub-properties?
Defaults to 2

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 2
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encoding
The encoding to write the text file in.
Defaults to: UTF8 (with BOM).

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

### -EnableVerbose
Enables deep verbosity when processing objects.
By default, individual conversion steps are not tracked for performance reasons.
Enable this for extensive amounts of debug messages.

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

### -Configuration
Additional configuration settings to provide for the conversion.
Custom converters may use these as implemented in their custom conversion.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: @{}
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
The object(s) to convert and write to file.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
