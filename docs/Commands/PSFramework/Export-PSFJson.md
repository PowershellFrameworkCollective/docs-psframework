---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Export-PSFJson

## SYNOPSIS
Converts input to json string and writes the result to file.

## SYNTAX

```
Export-PSFJson [-Path] <PathNewFileParameter> [[-InputObject] <Object>] [[-Depth] <Int32>] [-Compress]
 [[-Encoding] <EncodingParameter>] [<CommonParameters>]
```

## DESCRIPTION
Converts input to json string and writes the result to file.
Uses ConvertTo-Json under the hood.

## EXAMPLES

### EXAMPLE 1
```
Get-MgUser | Export-PSFJson .\users.json
```

Write all users from Microsoft Graph into a json file.

## PARAMETERS

### -Path
The path to the file(s) to create.
The parent directory must exist, the file will be overwritten if it already does.

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

### -InputObject
The data to convert to json and export.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Depth
How deep the into sub-properties do we want to delve?
Defaults to 2.
Any nested sub-properties that are deeper than that many levels in will be lost in the result.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Compress
Whether the Json string should be compressed to save space.

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

### -Encoding
What encoding to write the file in.
Defaults to UTF8 (with BOM).

```yaml
Type: EncodingParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: UTF8
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
