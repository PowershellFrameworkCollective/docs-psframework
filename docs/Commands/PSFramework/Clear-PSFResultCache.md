---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Clear-PSFresultCache
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Clear-PSFResultCache
---

# Clear-PSFResultCache

## Synopsis

Clears the result cache

## Syntax

### __AllParameterSets

```
Clear-PSFResultCache [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

Clears the result cache, which can come in handy if you have a huge amount of data stored within and want to free the memory.

## Examples

### EXAMPLE 1

```powershell
Clear-PSFResultCache
```

Clears the result cache, freeing up any used memory.

## Parameters

### Confirm

If this switch is enabled, you will be prompted for confirmation before executing any operations that change state.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### WhatIf

If this switch is enabled, no actions are performed but informational messages will be displayed that explain what would happen if the command were to run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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


