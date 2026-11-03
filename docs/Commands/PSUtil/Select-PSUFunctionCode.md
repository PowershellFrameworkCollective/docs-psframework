---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Select-PSUFunctionCode
---

# Select-PSUFunctionCode

## Synopsis

Function that shows you the definition of a function and allows you to select lines to copy to your clipboard.

## Syntax

### Default

```
Select-PSUFunctionCode [-Function] <string[]> [-NoTrim] [-EnableException] [<CommonParameters>]
```

### NoWait

```
Select-PSUFunctionCode [-Function] <string[]> [-NoWait] [-NoTrim] [-EnableException]
 [<CommonParameters>]
```

### PassThru

```
Select-PSUFunctionCode [-Function] <string[]> [-PassThru] [-NoTrim] [-EnableException]
 [<CommonParameters>]
```

## Description

Function that shows you the definition of a function and allows you to select lines to copy to your clipboard.
After running this command you will see a GridView pop up.
Select as many lines of code as you would like and select
ok to copy them to your clipboard.

## Examples

### EXAMPLE 1

```powershell
Select-PSUFunctionCode -function 'Start-PSUTimer'
```

This will open up the code for the function Start-PSUTimer in a GridView window.

### EXAMPLE 2

```powershell
Get-Command timer | Select-PSUFunctionCode
```

You can also pipe functions in.

## Parameters

### EnableException

Replaces user friendly yellow warnings with bloody red exceptions of doom!
Use this if you want the function to throw terminating errors you want to catch.

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

### Function

A description of the Function parameter.

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

### NoTrim

If enabled, the white space will not be trimmed.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- t
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

### NoWait

Shows function code in gridview and returns control without waiting for the window to close

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- w
ParameterSets:
- Name: NoWait
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

Presents input command(s) in gridview, selected lines (if any) get returned as output

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- p
ParameterSets:
- Name: PassThru
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Notes

Author: Andrew Pla



