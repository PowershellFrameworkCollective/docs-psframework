---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Export-PSFClixml
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Export-PSFClixml
---

# Export-PSFClixml

## Synopsis

Writes objects to the filesystem.

## Syntax

### __AllParameterSets

```
Export-PSFClixml [-Path] <string> [-Depth <int>] [-InputObject <Object>] [-Style <ClixmlDataStyle>]
 [-NoCompression] [-PassThru] [-Encoding <EncodingParameter>] [<CommonParameters>]
```

## Description

Writes objects to the filesystem.
In opposite to the default Export-Clixml cmdlet, this function offers data compression as the default option.

Exporting to regular clixml is still supported though.

## Examples

### EXAMPLE 1

```powershell
Get-ChildItem | Export-PSFClixml -Path 'C:\temp\data.byte'
```

Exports a list of all items in the current path as compressed binary file to C:\temp\data.byte

### EXAMPLE 2

```powershell
Get-ChildItem | Export-PSFClixml -Path C:\temp\data.xml -Style 'String' -NoCompression
```

Exports a list of all items in the current path as a default clixml readable by Import-Clixml

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

The encoding to use when using string-style export.
By default, it exports as UTF8 encoding.

```yaml
Type: PSFramework.Parameter.EncodingParameter
DefaultValue: (Get-PSFConfigValue -FullName 'PSFramework.Text.Encoding.DefaultWrite')
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

The object(s) to serialize.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
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

### PassThru

Passes all objects along the pipeline.
By default, Export-PSFClixml does not produce output.

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

The path to write to.

```yaml
Type: System.String
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

### Style

Whether to export as byte (better compression) or as string (often easier to transmit using other utilities/apis).

```yaml
Type: PSFramework.Serialization.ClixmlDataStyle
DefaultValue: Byte
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


