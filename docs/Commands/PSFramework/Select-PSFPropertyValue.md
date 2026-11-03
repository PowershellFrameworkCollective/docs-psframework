---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Select-PSFPropertyValue
---

# Select-PSFPropertyValue

## Synopsis

Expand specific property values based on selection logic.

## Syntax

### Default

```
Select-PSFPropertyValue [-Property] <string[]> [-InputObject <Object>] [<CommonParameters>]
```

### Fallback

```
Select-PSFPropertyValue [-Property] <string[]> [-Fallback] [-InputObject <Object>]
 [<CommonParameters>]
```

### Select

```
Select-PSFPropertyValue [-Property] <string[]> [-Select <string>] [-InputObject <Object>]
 [<CommonParameters>]
```

### Join

```
Select-PSFPropertyValue [-Property] <string[]> [-JoinBy <string>] [-InputObject <Object>]
 [<CommonParameters>]
```

### Format

```
Select-PSFPropertyValue [-Property] <string[]> [-FormatWith <string>] [-InputObject <Object>]
 [<CommonParameters>]
```

## Description

This command allows picking a set of properties and then returning ...
- All their values
- The value that meets specific rules
- A composite value

## Examples

### EXAMPLE 1

```powershell
Get-ADComputer -Filter * | Select-PSFPropertyValue -Property 'DNSHostName', 'Name' -Fallback
```

For each computer in the domain, it will pick the DNSHostName if available, otherwise the Name.

## Parameters

### Fallback

Whether to fall back on other properties if the first one doesn't contain values.
This picks the value of the first property that actually has a value.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Fallback
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### FormatWith

Formats the selected properties into the specified format string.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Format
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

The object(s) whose properties to inspect.

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

### JoinBy

Joins the selected properties by the string specified.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Join
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Property

The properties to work with, in the order they should be considered.

```yaml
Type: System.String[]
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

### Select

Select either the largest or lowest propertyvalue in the Propertynames specified.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Select
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


