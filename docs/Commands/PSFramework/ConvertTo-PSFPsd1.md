---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# ConvertTo-PSFPsd1

## SYNOPSIS
Converts objects into PSD1 configuration text.

## SYNTAX

```
ConvertTo-PSFPsd1 [[-Depth] <Int32>] [-EnableVerbose] [[-Configuration] <Hashtable>] [-InputObject] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Converts objects into PSD1 configuration text.

Use Register-PSFPsd1Converter to extend/customize how this conversion happens.

## EXAMPLES

### EXAMPLE 1
```
Get-ChildItem | ConvertTo-PSFPsd1
```

Takes all files and folders and converts the data into psd1-style data structures.

## PARAMETERS

### -Depth
How many levels deep do you want to process sub-properties?
Defaults to 2

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 2
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
Position: 2
Default value: @{}
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
The object(s) to convert.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String
## NOTES

## RELATED LINKS
