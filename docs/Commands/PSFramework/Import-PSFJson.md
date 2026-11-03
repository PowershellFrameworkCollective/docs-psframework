---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Import-PSFJson
---

# Import-PSFJson

## Synopsis

Imports a json document from file and offers its content as objects.

## Syntax

### __AllParameterSets

```
Import-PSFJson [[-Path] <PathFileLaxParameter>] [[-LiteralPath] <PathLiteralParameter>]
 [[-Encoding] <EncodingParameter>] [-AsHashtable] [-FixData] [<CommonParameters>]
```

## Description

Imports a json document from file and offers its content as objects.

WARNING: The FixData parameter is experimental and may experience breaking changes!

## Examples

### EXAMPLE 1

```powershell
Import-PSFJson .\policies.json
```

Reads the content of policies.json, parses its structure and returns objects representing its content.

## Parameters

### AsHashtable

Return content as hashtable, rather than PSCustomObject

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

The encoding of the file to read.
Defaults to UTF8.

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

### FixData

EXPERIMENTAL PARAMETER, MAY SUFFER BREAKING CHANGES
Attempt to fix broken data from the data processed.
Assumes the json was originally generated through PowerShell and tries to detect and fix issues that happened during export.
Most notably: Timestamps no longer being proper timestamps.

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

### LiteralPath

Path to the file to import.
Will NOT evaluate wildcards.

```yaml
Type: PSFramework.Parameter.PathLiteralParameter
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

### Path

Path to the file to import.
Will evaluate wildcards.

```yaml
Type: PSFramework.Parameter.PathFileLaxParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


