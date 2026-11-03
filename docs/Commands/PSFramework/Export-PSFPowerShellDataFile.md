---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Export-PSFPowerShellDataFile
---

# Export-PSFPowerShellDataFile

## Synopsis

Exports data into psd1 config files.

## Syntax

### __AllParameterSets

```
Export-PSFPowerShellDataFile [-Path] <PathNewFileParameter> [[-Depth] <int>]
 [[-Encoding] <EncodingParameter>] [[-Configuration] <hashtable>] [-InputObject] <Object>
 [-EnableVerbose] [<CommonParameters>]
```

## Description

Exports data into psd1 config files.

Use Register-PSFPsd1Converter to extend/customize how this conversion happens.

## Examples

### EXAMPLE 1

```powershell
Get-ChildItem | Export-PSFPowerShellDataFile -Path .\files.psd1
```

Takes all files and folders and converts the data into psd1-style data structures, then write that to "files.psd1" in the current path..

## Parameters

### Configuration

Additional configuration settings to provide for the conversion.
Custom converters may use these as implemented in their custom conversion.

```yaml
Type: System.Collections.Hashtable
DefaultValue: '@{}'
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

### Depth

How many levels deep do you want to process sub-properties?
Defaults to 2

```yaml
Type: System.Int32
DefaultValue: 2
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

### EnableVerbose

Enables deep verbosity when processing objects.
By default, individual conversion steps are not tracked for performance reasons.
Enable this for extensive amounts of debug messages.

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

The object(s) to convert and write to file.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Path

The path where to write to.
The parent folder must exist.
May provide multiple paths.

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


