---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSMDHeader
---

# New-PSMDHeader

## Synopsis

Generates a header wrapping around text.

## Syntax

### __AllParameterSets

```
New-PSMDHeader [-Text] <string[]> [-BorderBottom <string>] [-BorderLeft <string>]
 [-BorderRight <string>] [-BorderTop <string>] [-CornerLB <string>] [-CornerLT <string>]
 [-CornerRB <string>] [-CornerRT <string>] [-MaxWidth] [-Padding <int>]
 [-TextAlignment <TextAlignment>] [-Width <int>] [<CommonParameters>]
```

## Description

Generates a header wrapping around text.
The output is an object that contains the configuration options to generate a header.
Use its ToString() method (or cast it to string) to generate the header.

## Examples

### EXAMPLE 1

```powershell
New-PSMDHeader -Text 'Example'
```

Will create a header labeled 'Example' that spans the entire screen.

### EXAMPLE 2

```powershell
New-PSMDHeader -Text 'Example' -Width 80
```

Will create a header labeled 'Example' with a total width of 80:
 #----------------------------------------------------------------------------#
 #                                  Example                                   #
 #----------------------------------------------------------------------------#

### EXAMPLE 3

```powershell
New-PSMDHeader -Text 'Example' -Width 80 -BorderLeft " |" -BorderRight "| " -CornerLB " \" -CornerLT " /" -CornerRB "/" -CornerRT "\"
```

Will create a header labeled "Example with a total width of 80 and some custom border lines:
 /----------------------------------------------------------------------------\
 |                                  Example                                   |
 \----------------------------------------------------------------------------/

## Parameters

### BorderBottom

The border used for the bottom of the frame.
Use a single letter, such as "-"

```yaml
Type: System.String
DefaultValue: '-'
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

### BorderLeft

The border used for the left side of the frame.

```yaml
Type: System.String
DefaultValue: '#'
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

### BorderRight

The border used for the right side of the frame.

```yaml
Type: System.String
DefaultValue: '#'
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

### BorderTop

The border used for the top of the frame.
Use a single letter, such as "-"

```yaml
Type: System.String
DefaultValue: '-'
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

### CornerLB

The symbol used for the left-bottom corner of the frame

```yaml
Type: System.String
DefaultValue: '#'
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

### CornerLT

The symbol used for the left-top corner of the frame

```yaml
Type: System.String
DefaultValue: '#'
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

### CornerRB

The symbol used for the right-bottom corner of the frame

```yaml
Type: System.String
DefaultValue: '#'
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

### CornerRT

The symbol used for the right-top corner of the frame

```yaml
Type: System.String
DefaultValue: '#'
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

### MaxWidth

Whether to align the frame's total width to the window width.

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

### Padding

Whether the text should be padded.
Only applies to left/right aligned text.

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

### Text

The text to wrap into a header.
Can handle multiline text.
When passing a list of strings, each string will be wrapped into its own header.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TextAlignment

Default: Center
Whether the text should be aligned left, center or right.

```yaml
Type: PSModuleDevelopment.Utility.TextAlignment
DefaultValue: Center
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

### Width

Total width of the header.
Defaults to entire screen.

```yaml
Type: System.Int32
DefaultValue: $Host.UI.RawUI.WindowSize.Width
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


