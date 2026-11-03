---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: https://psframework.org/documentation/commands/PSFramework/Remove-PSFNull.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSFNull
---

# Remove-PSFNull

## Synopsis

Filters out null objects.

## Syntax

### __AllParameterSets

```
Remove-PSFNull [-InputObject <psobject>] [-AllowEmptyCollections] [-AllowEmptyStrings] [-Enumerate]
 [<CommonParameters>]
```

## Description

This cmdlet can be used to filter out $null objects, empty collections and empty strings from the pipeline.

## Examples

### Sweeping the Pipeline

```powershell
C:\PS> Get-Something | Remove-PSFNull | Do-Something
```

In this example, Remove-PSFNull cleans up the pipeline from null-equivalent objects before passing output along to Do-Something

## Parameters

### AllowEmptyCollections

By default, empty collections are dropped from the output.
Using this switch, they are passe along.

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

### AllowEmptyStrings

By default, empty strings are discarded.
Setting this switch causes them to be passed through instead.

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

### Enumerate

By default, output is not enumerated (Lists are sent along the pipeline as Lists, not individual items).
If Remove-PSFNull should enumerate output after all, set this switch.

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

The items to filter

```yaml
Type: System.Management.Automation.PSObject
DefaultValue: None
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

## Notes




## Links

Microsoft.PowerShell.PlatyPS.Model.Links


