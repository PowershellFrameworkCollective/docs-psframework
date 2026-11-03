---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Export-PSFJson
---

# Export-PSFJson

## Synopsis

Converts input to json string and writes the result to file.

## Syntax

### __AllParameterSets

```
Export-PSFJson [-Path] <PathNewFileParameter> [[-InputObject] <Object>] [[-Depth] <int>]
 [[-Encoding] <EncodingParameter>] [-Compress] [<CommonParameters>]
```

## Description

Converts input to json string and writes the result to file.
Uses ConvertTo-Json under the hood.

## Examples

### EXAMPLE 1

```powershell
Get-MgUser | Export-PSFJson .\users.json
```

Write all users from Microsoft Graph into a json file.

## Parameters

### Compress

Whether the Json string should be compressed to save space.

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

### Depth

How deep the into sub-properties do we want to delve?
Defaults to 2.
Any nested sub-properties that are deeper than that many levels in will be lost in the result.

```yaml
Type: System.Int32
DefaultValue: 0
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

### Encoding

What encoding to write the file in.
Defaults to UTF8 (with BOM).

```yaml
Type: PSFramework.Parameter.EncodingParameter
DefaultValue: UTF8
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

### InputObject

The data to convert to json and export.

```yaml
Type: System.Object
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

### Path

The path to the file(s) to create.
The parent directory must exist, the file will be overwritten if it already does.

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


