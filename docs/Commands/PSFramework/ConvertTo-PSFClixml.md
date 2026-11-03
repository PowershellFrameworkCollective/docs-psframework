---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: ConvertTo-PSFClixml
---

# ConvertTo-PSFClixml

## Synopsis

Converts an input object into a serialized string or byte array.

## Syntax

### __AllParameterSets

```
ConvertTo-PSFClixml [[-Depth] <int>] [[-InputObject] <Object>] [[-Style] <ClixmlDataStyle>]
 [-NoCompression] [<CommonParameters>]
```

## Description

Converts an input object into a serialized string or byte array.
Works analogous to Export-PSFClixml, only it does not require being written to file.

## Examples

### EXAMPLE 1

```powershell
Get-ChildItem | ConvertTo-PSFClixml
```

Scans all items in the current folder and then converts that into a compressed clixml string.

## Parameters

### Depth

Specifies how many levels of contained objects are included in the XML representation.
The default value is 2.

```yaml
Type: System.Int32
DefaultValue: 0
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

### InputObject

The object(s) to serialize.

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

### NoCompression

By default, exported data is compressed, saving a lot of storage at the cost of some CPU cycles.
This switch disables this compression, making string-style exports compatible with Import-Clixml.

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

### Style

Whether to export as byte (better compression) or as string (often easier to transmit using other utilities/apis).

```yaml
Type: PSFramework.Serialization.ClixmlDataStyle
DefaultValue: String
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


