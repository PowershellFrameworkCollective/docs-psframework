---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Split-PSMDScriptFile
---

# Split-PSMDScriptFile

## Synopsis

Parses a file and exports all top-level functions from it into a dedicated file, just for the function.

## Syntax

### __AllParameterSets

```
Split-PSMDScriptFile [[-File] <string[]>] [[-Path] <string>] [[-Encoding] <Object>]
 [<CommonParameters>]
```

## Description

Parses a file and exports all top-level functions from it into a dedicated file, just for the function.
The original file remains unharmed by this.

Note: Any comments outside the function definition will not be copied.

## Examples

### EXAMPLE 1

```powershell
Split-PSMDScriptFile -File ".\module.ps1" -Path .\files
```

Exports all functions in module.ps1 and puts them in individual files in the folder .\files.

## Parameters

### Encoding

Default: UTF8
The output encoding.
Can usually be left alone.

```yaml
Type: System.Object
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

### File

The file(s) to extract functions from.

```yaml
Type: System.String[]
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

### Path

The folder to export to

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


