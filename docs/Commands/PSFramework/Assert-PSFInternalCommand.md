---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Assert-PSFInternalCommand
---

# Assert-PSFInternalCommand

## Synopsis

Verifies, that the command calling it in turn was only called from another command within the same module.

## Syntax

### __AllParameterSets

```
Assert-PSFInternalCommand -PSCmdlet <PSCmdlet> [<CommonParameters>]
```

## Description

Verifies, that the command calling it in turn was only called from another command within the same module.

Modules can have their internal commands accessed directly from outside of their own module.
For example, by loading the psm1 file - or their own ps1 file, if they are shipped separately - it becomes possible, to circumvent the verified interface of the publicly exposed command.
In a secure code management scenario, where validated modules are allowlisted, this might allow attackers to execute commands flagged as trusted, that should not be exposed directly.

With this command, we can prevent this issue, but potentially make development harder.
It is recommended to place this command only as part of the build step - for example by putting it into the code commented out, then remove the comment during build, before publishing the module.

## Examples

### Example 1

```powershell
PS C:\> Assert-PSFInternalCommand -PSCmdlet $PSCmdlet
```

Ensures the current command calling Assert-PSFInternalCommand was only called from another command in the same module.

## Parameters

### PSCmdlet

The $PSCmdlet variable of the calling command.
This ensures that any exceptions are thrown in the context of the calling command, making this Cmdlet functionally invisible.

```yaml
Type: System.Management.Automation.PSCmdlet
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Notes





