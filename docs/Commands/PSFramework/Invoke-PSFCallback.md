---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSFCallback
---

# Invoke-PSFCallback

## Synopsis

Invokes all registered callback scripts applicable to the calling command.

## Syntax

### __AllParameterSets

```
Invoke-PSFCallback [-Data <Object>] [-EnableException <bool>] [-PSCmdlet <PSCmdlet>]
 [<CommonParameters>]
```

## Description

Invokes all registered callback scripts applicable to the calling command.

Use Register-PSFCallback to register scriptblocks that get applied.

By calling Invoke-PSFCallback - which will not do anything unless somebody registers callback scriptblocks - a module can provide extensions points to which other modules can attach, without the implementing module needing to know those external modules.

## Examples

### Example 1 : Basic Invocation

```powershell
PS C:\> Invoke-PSFCallback
```

Simply by calling the command, any registered scriptblocks that apply to your command get triggered.

_

### Example 2 : Providing Information

```powershell
PS C:\> Invoke-PSFCallback -Data $Server
```

Executes all applicable, registered callback scriptblocks.

Provides the information stored in $Server to the scriptblock(s) being this executed.

_

### Example 3 : The full invocation

```powershell
PS C:\> Invoke-PSFCallback -Data $Server -EnableException $true -PSCmdlet $PSCmdlet
```

Executes all applicable, registered callback scriptblocks.

Provides the information stored in $Server to the scriptblock(s) being this executed.

If any of the executed callback scriptblocks fails with a terminating exception, the command calling Invoke-PSFCallback also fails in a terminating exception (no try/catch necessary).

## Parameters

### Data

Additional data to provide to the callback scriptblock.

This can be useful to implement input-driven workflows.
For example, it would allow a callback scriptblock to load configuration, based on the server being processed.

```yaml
Type: System.Object
DefaultValue: None
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

Enables - if $true - terminating exceptions when a single callback scriptblock fails.
The terminating exception is thrown in the context of the calling command, not Invoke-PSFCallback, so it is unneccessary - and impossible - to handle within a try/catch block.

If set to $false (default), failure flags the calling command for failure, as detected by Test-PSFFunctionInterrupt.
In that case, Invoke-PSFCallback will log the error, but not directly terminate the calling command.

```yaml
Type: System.Boolean
DefaultValue: None
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

### PSCmdlet

The $PSCmdlet object of the calling command.
If this value is not provided, it will autoamtically be picked up.
Providing it improves performance slightly, as it removes the need to look it up.

```yaml
Type: System.Management.Automation.PSCmdlet
DefaultValue: None
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

## Notes





