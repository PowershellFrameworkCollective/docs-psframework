---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Get-PSFFileContent

## SYNOPSIS
Read the contents of a file.

## SYNTAX

### Text (Default)
```
Get-PSFFileContent [[-Path] <PathFileParameter>] [-LiteralPath <PathLiteralParameter>] [-ReadCount <Int64>]
 [-TotalCount <Int64>] [-Skip <Int64>] [-Last <Int64>] [-Wait] [-Timeout <TimeSpanParameter>]
 [-Encoding <EncodingParameter>] [<CommonParameters>]
```

### Bytes
```
Get-PSFFileContent [[-Path] <PathFileParameter>] [-LiteralPath <PathLiteralParameter>] [-TotalCount <Int64>]
 [-Skip <Int64>] [-Last <Int64>] [-AsByteStream] [-Wait] [-Timeout <TimeSpanParameter>] [<CommonParameters>]
```

## DESCRIPTION
Read the contents of a file.
This is a replacement for Get-Content, trading flexibility in return for focus.

Notably, it allows for consistent parameterization between PowerShell versions.

## EXAMPLES

### EXAMPLE 1
```
Get-PSFFileContent .\response.json | ConvertFrom-Json
```

Read a json file and convert into useful objects.

### EXAMPLE 2
```
Get-PSFFileContent .\service-2025-08-14.log -Last 20 -Wait
```

Read the last 20 lines in the specified logfile, then wait for more lines as they are written to the file.

### EXAMPLE 3
```
$certBytes = Get-PSFFileContent -Path .\cert.cer -AsByteStream
```

Reads the bytes from the specified certificate file.

## PARAMETERS

### -Path
Path to the file(s) to read.

```yaml
Type: PathFileParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -LiteralPath
Literal Path to the file(s) to read.
This does NOT use wildcard expressions when evaluating paths.

```yaml
Type: PathLiteralParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReadCount
How man lines to include in a single return / dataset.
Set to 0 or less to return the entire file as a single string.
Example: When reading a file with 13 lines of text, setting "ReadCount" to 5 will return 3 strings: 2 strings of 5 lines each, one with the remaining 3.
Defaults to: 1

```yaml
Type: Int64
Parameter Sets: Text
Aliases:

Required: False
Position: Named
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -TotalCount
How many datasets in total to return.
When specified, this allows limiting the returned amount of results.
This parameter takes ReadCount into account, not counting individual lines of text, but number of result-sets after considering ReadCount.

Example 1: File: 50 Lines, ReadCount: 1, TotalCount: 20
In this case, the first 20 lines of the text file are returned

Example 2: File: 50 Lines, ReadCount: 3, TotalCount: 10
In this case, the first 10 results of 3-line strings are returned (resulting in 10 strings, covering a total of 30 lines of the text file).

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Skip
How many dataset to skip.
The size of a dataset depends on the ReadCount parameter.
Skips the first X datasets, unless combined with "Last", in which case it will skip the last X datasets instead.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Last
Only return the last X datasets from the file.
The size of a dataset depends on the ReadCount parameter.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsByteStream
Return the content of the file as a binary stream.
This parameter changes the behavior of many other parameters, as it is not compatible with "-ReadCount".
Each dataset is now always a single byte.

Example: TotalCount: 48, Skip: 12
In this example, it will skip the first 12 bytes in the file and then return the next 48 (or less, if there are fewer bytes in the file in total).

```yaml
Type: SwitchParameter
Parameter Sets: Bytes
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Wait
Rather than execute the command and then return, wait for some time and keep looking for new entries to be added to the file.
This will return new lines / datasets as they are added to the file.
This command will look every second for new content in the file.

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

### -Timeout
The amount of time to wait before stopping waiting for new content in the file.
Defaults to: 1 hour.

```yaml
Type: TimeSpanParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 1h
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encoding
The encoding to interpret the text file under.
Has no effect when using "-AsByteStream".
Defaults to: UTF8 (with BOM).

```yaml
Type: EncodingParameter
Parameter Sets: Text
Aliases:

Required: False
Position: Named
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
