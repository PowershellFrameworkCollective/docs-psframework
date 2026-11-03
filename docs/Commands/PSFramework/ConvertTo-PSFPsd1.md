---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: ConvertTo-PSFPsd1
---

# ConvertTo-PSFPsd1

## Synopsis

Converts objects into PSD1 configuration text.

## Syntax

### __AllParameterSets

```
ConvertTo-PSFPsd1 [[-Depth] <int>] [[-Configuration] <hashtable>] [-InputObject] <Object>
 [-EnableVerbose] [<CommonParameters>]
```

## Description

Converts objects into PSD1 configuration text.

Use Register-PSFPsd1Converter to extend/customize how this conversion happens.

## Examples

### EXAMPLE 1

```powershell
Get-ChildItem | ConvertTo-PSFPsd1
```

Takes all files and folders and converts the data into psd1-style data structures.

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
  Position: 1
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
  Position: 0
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

### InputObject

The object(s) to convert.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


