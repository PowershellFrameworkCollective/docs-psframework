---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFFileContent
---

# Set-PSFFileContent

## Synopsis

Writes content to a file.

## Syntax

### __AllParameterSets

```
Set-PSFFileContent [-Path] <PathNewFileParameter> [[-InputObject] <Object[]>]
 [[-Encoding] <EncodingParameter>] [[-NewLine] <string>] [-AsByteStream] [-Append] [-NoFlush]
 [<CommonParameters>]
```

## Description

Writes content to a file.
This is a replacement for Set-Content, trading flexibility in return for focus.

Notably, it allows for consistent parameterization between PowerShell versions.

## Examples

### EXAMPLE 1

```powershell
Get-MgUser | ConvertTo-Json | Set-PSFFileContent -Path .\users.json
```

Writes all users in the tenant as json to disk.

### EXAMPLE 2

```powershell
$cert.GetRawCertData() | Set-PSFFileContent -Path .\cert.cer -AsByteStream
```

Writes the raw certificate information as a .cer file to disk.
This will result in a perfectly valid public certificate.

## Parameters

### Append

Whether to append your content to an existing file.
Still creates the file, if it does not exist.
By default, all previous content will be overwritten.

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

### AsByteStream

Instead of writing the content as a text file, write it as a binary blob.
This requires the input to be valid bytes!
Note: Writing binary filas via input from pipeline is SIGNIFICANTLY slower than providing the bytes as an explicitly bound parameter.

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

### Encoding

The encoding to write the text file in.
Has no effect when using "-AsByteStream".
Defaults to: UTF8 (with BOM).

```yaml
Type: PSFramework.Parameter.EncodingParameter
DefaultValue: UTF8
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### InputObject

The content to write.
By default, this content will be converted to string and written as a line per object.

```yaml
Type: System.Object[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### NewLine

The symbols to use as NewLine.
The usual key consideration here is whether to include the carriage return (`r) or not.
Defaults to: "`n"
If you wish to include the carriage return, set it to "`r`n".

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### NoFlush

Do not flush the contents of the files to disk, as you write them.
By default, all contents - lines or bytes - are immediately written to disk ("Flushed"), to ensure no data is lost, in case of the pipeline failing.
This increase in data assurance comes at an increased performance cost.
Setting this parameter means it will only at the end, when all content has been sent, flush the contents to disk.

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

### Path

The file(s) to write to.
Supports multiple files, at least the folder must exist.

```yaml
Type: PSFramework.Parameter.PathNewFileParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


