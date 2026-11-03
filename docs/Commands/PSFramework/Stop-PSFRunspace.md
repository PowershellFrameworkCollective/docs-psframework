---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Stop-PSFRunspace
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Stop-PSFRunspace
---

# Stop-PSFRunspace

## Synopsis

Stops a runspace that was registered to the PSFramework

## Syntax

### __AllParameterSets

```
Stop-PSFRunspace [[-Name] <string[]>] [[-Runspace] <RunspaceContainer[]>] [-EnableException]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

Stops a runspace that was registered to the PSFramework
Will not cause errors if the runspace is already halted.

Runspaces may not automatically terminate immediately when calling this function.
Depending on the implementation of the scriptblock, this may in fact take a little time.
If the scriptblock hasn't finished and terminated the runspace in a seemingly time, it will be killed by the system.
This timeout is by default 30 seconds, but can be altered by using the Configuration System.
For example, this line will increase the timeout to 60 seconds:
Set-PSFConfig -FullName PSFramework.Runspace.StopTimeout -Value 60

## Examples

### EXAMPLE 1

```powershell
Stop-PSFRunspace -Name 'mymodule.maintenance'
```

Stops the runspace registered under the name 'mymodule.maintenance'

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

### Name

The name of the registered runspace to stop

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Runspace

The runspace to stop.
Returned by Get-PSFRunspace

```yaml
Type: PSFramework.Runspace.RunspaceContainer[]
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

## Notes

Additional information about the function.



