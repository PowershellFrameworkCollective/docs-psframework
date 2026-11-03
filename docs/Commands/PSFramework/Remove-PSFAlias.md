---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSFAlias
---

# Remove-PSFAlias

## Synopsis

Removes an alias from the global scope.

## Syntax

### __AllParameterSets

```
Remove-PSFAlias [-Name] <string[]> [-Force] [<CommonParameters>]
```

## Description

Removes an alias from the global* scope.
Please note that this always affects the global scope and should not be used lightly.
This has the potential to break code that does not comply with PowerShell best practices and relies on the use of aliases.

Refuses to delete constant aliases.
Requires the '-Force' parameter to delete ReadOnly aliases.

*This includes aliases exported by modules.

## Examples

### EXAMPLE 1

```powershell
Remove-PSFAlias -Name 'grep'
```

Removes the global alias 'grep'

### EXAMPLE 2

```powershell
Remove-PSFAlias -Name 'select' -Force
```

Removes the default alias 'select'

## Parameters

### Force

Enforce removal of aliases.
Required to remove ReadOnly aliases (including default aliases such as "select" or "group").

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

### Name

The name of the alias to remove.

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
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


