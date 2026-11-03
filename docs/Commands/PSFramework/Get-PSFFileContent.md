---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFFileContent
---

# Get-PSFFileContent

## Synopsis

Read the contents of a file.

## Syntax

### Text

```
Get-PSFFileContent [[-Path] <PathFileParameter>] [-LiteralPath <PathLiteralParameter>]
 [-ReadCount <long>] [-TotalCount <long>] [-Skip <long>] [-Last <long>] [-Wait]
 [-Timeout <TimeSpanParameter>] [-Encoding <EncodingParameter>] [<CommonParameters>]
```

### Bytes

```
Get-PSFFileContent [[-Path] <PathFileParameter>] -AsByteStream [-LiteralPath <PathLiteralParameter>]
 [-TotalCount <long>] [-Skip <long>] [-Last <long>] [-Wait] [-Timeout <TimeSpanParameter>]
 [<CommonParameters>]
```

## Description

Read the contents of a file.
This is a replacement for Get-Content, trading flexibility in return for focus.

Notably, it allows for consistent parameterization between PowerShell versions.

## Examples

### EXAMPLE 1

```powershell
Get-PSFFileContent .\response.json | ConvertFrom-Json
```

Read a json file and convert into useful objects.

### EXAMPLE 2

```powershell
Get-PSFFileContent .\service-2025-08-14.log -Last 20 -Wait
```

Read the last 20 lines in the specified logfile, then wait for more lines as they are written to the file.

### EXAMPLE 3

```powershell
$certBytes = Get-PSFFileContent -Path .\cert.cer -AsByteStream
```

Reads the bytes from the specified certificate file.

## Parameters

### AsByteStream

Return the content of the file as a binary stream.
This parameter changes the behavior of many other parameters, as it is not compatible with "-ReadCount".
Each dataset is now always a single byte.

Example: TotalCount: 48, Skip: 12
In this example, it will skip the first 12 bytes in the file and then return the next 48 (or less, if there are fewer bytes in the file in total).

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Bytes
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Encoding

The encoding to interpret the text file under.
Has no effect when using "-AsByteStream".
Defaults to: UTF8 (with BOM).

```yaml
Type: PSFramework.Parameter.EncodingParameter
DefaultValue: UTF8
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Text
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Last

Only return the last X datasets from the file.
The size of a dataset depends on the ReadCount parameter.

```yaml
Type: System.Int64
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### LiteralPath

Literal Path to the file(s) to read.
This does NOT use wildcard expressions when evaluating paths.

```yaml
Type: PSFramework.Parameter.PathLiteralParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Path

Path to the file(s) to read.

```yaml
Type: PSFramework.Parameter.PathFileParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ReadCount

How man lines to include in a single return / dataset.
Set to 0 or less to return the entire file as a single string.
Example: When reading a file with 13 lines of text, setting "ReadCount" to 5 will return 3 strings: 2 strings of 5 lines each, one with the remaining 3.
Defaults to: 1

```yaml
Type: System.Int64
DefaultValue: 1
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Text
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Skip

How many dataset to skip.
The size of a dataset depends on the ReadCount parameter.
Skips the first X datasets, unless combined with "Last", in which case it will skip the last X datasets instead.

```yaml
Type: System.Int64
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Timeout

The amount of time to wait before stopping waiting for new content in the file.
Defaults to: 1 hour.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
DefaultValue: 1h
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TotalCount

How many datasets in total to return.
When specified, this allows limiting the returned amount of results.
This parameter takes ReadCount into account, not counting individual lines of text, but number of result-sets after considering ReadCount.

Example 1: File: 50 Lines, ReadCount: 1, TotalCount: 20
In this case, the first 20 lines of the text file are returned

Example 2: File: 50 Lines, ReadCount: 3, TotalCount: 10
In this case, the first 10 results of 3-line strings are returned (resulting in 10 strings, covering a total of 30 lines of the text file).

```yaml
Type: System.Int64
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Wait

Rather than execute the command and then return, wait for some time and keep looking for new entries to be added to the file.
This will return new lines / datasets as they are added to the file.
This command will look every second for new content in the file.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


