---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Set-PSFFileContent

## SYNOPSIS
Writes content to a file.

## SYNTAX

```
Set-PSFFileContent [-Path] <PathNewFileParameter> [[-InputObject] <Object[]>] [-AsByteStream]
 [[-Encoding] <EncodingParameter>] [[-NewLine] <String>] [-Append] [-NoFlush] [<CommonParameters>]
```

## DESCRIPTION
Writes content to a file.
This is a replacement for Set-Content, trading flexibility in return for focus.

Notably, it allows for consistent parameterization between PowerShell versions.

## EXAMPLES

### EXAMPLE 1
```
Get-MgUser | ConvertTo-Json | Set-PSFFileContent -Path .\users.json
```

Writes all users in the tenant as json to disk.

### EXAMPLE 2
```
$cert.GetRawCertData() | Set-PSFFileContent -Path .\cert.cer -AsByteStream
```

Writes the raw certificate information as a .cer file to disk.
This will result in a perfectly valid public certificate.

## PARAMETERS

### -Path
The file(s) to write to.
Supports multiple files, at least the folder must exist.

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
The content to write.
By default, this content will be converted to string and written as a line per object.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -AsByteStream
Instead of writing the content as a text file, write it as a binary blob.
This requires the input to be valid bytes!
Note: Writing binary filas via input from pipeline is SIGNIFICANTLY slower than providing the bytes as an explicitly bound parameter.

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
The encoding to write the text file in.
Has no effect when using "-AsByteStream".
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

### -NewLine
The symbols to use as NewLine.
The usual key consideration here is whether to include the carriage return (\`r) or not.
Defaults to: "\`n"
If you wish to include the carriage return, set it to "\`r\`n".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Append
Whether to append your content to an existing file.
Still creates the file, if it does not exist.
By default, all previous content will be overwritten.

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

### -NoFlush
Do not flush the contents of the files to disk, as you write them.
By default, all contents - lines or bytes - are immediately written to disk ("Flushed"), to ensure no data is lost, in case of the pipeline failing.
This increase in data assurance comes at an increased performance cost.
Setting this parameter means it will only at the end, when all content has been sent, flush the contents to disk.

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
