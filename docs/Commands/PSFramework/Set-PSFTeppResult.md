---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Set-PSFTeppResult
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFTeppResult
---

# Set-PSFTeppResult

## Synopsis

Refreshes the tab completion value cache.

## Syntax

### __AllParameterSets

```
Set-PSFTeppResult [-TabCompletion] <string> [-Value] <string[]> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## Description

Refreshes the tab completion value cache for the specified completion scriptblock.

Tab Completion scriptblocks can be configured to retrieve values from a dedicated cache.
This allows seamless background refreshes of completion data and eliminates all waits for the user.

## Examples

### EXAMPLE 1

```powershell
Set-PSFTeppResult -TabCompletion 'MyModule.Computer' -Value (Get-ADComputer -Filter *).Name
```

Stores the names of all computers in AD into the tab completion cache of the completion scriptblock 'MyModule.Computer'

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

### TabCompletion

The name of the completion script to set the last results for.

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

### Value

The values to set.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
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


