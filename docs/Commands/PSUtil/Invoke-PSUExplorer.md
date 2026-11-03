---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSUExplorer
---

# Invoke-PSUExplorer

## Synopsis

Opens the windows explorer at the specified position.

## Syntax

### __AllParameterSets

```
Invoke-PSUExplorer [[-Path] <string[]>] [-Module <psmoduleinfo[]>] [-Duplicates] [-EnableException]
 [<CommonParameters>]
```

## Description

Opens the windows explorer at the specified position.

## Examples

### EXAMPLE 1

```powershell
dir | Explorer
```

Opens each folder in the current directory in a separate explorer Window.

## Parameters

### Duplicates

Setting this switch will cause the function to open the same folder multiple times, if it was passed multiple times.
By default, the function will not open the same folder multiple times (a dir of a directory with multiple files would otherwise cause multiple open windows).

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

### EnableException

This parameters disables user-friendly warnings and enables the throwing of exceptions.
This is less user friendly, but allows catching exceptions in calling scripts.

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

### Module

The module, the base folder of which should be opened.

```yaml
Type: System.Management.Automation.PSModuleInfo[]
DefaultValue: ''
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

Alias:   FullName
Default: (Get-Location).Path
The folder to open in explorer.
If a file was passed the containing folder will be opened instead.

```yaml
Type: System.String[]
DefaultValue: (Get-Location).ProviderPath
SupportsWildcards: false
Aliases:
- FullName
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


