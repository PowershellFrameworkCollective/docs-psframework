---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Test-PSFParameterBinding
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFParameterBinding
---

# Test-PSFParameterBinding

## Synopsis

Helper function that tests, whether a parameter was bound.

## Syntax

### __AllParameterSets

```
Test-PSFParameterBinding [-ParameterName] <string[]> [-Not] [-And] [-Mode <string>]
 [-BoundParameters <Object>] [<CommonParameters>]
```

## Description

Helper function that tests, whether a parameter was bound.

## Examples

### EXAMPLE 1

```powershell
if (Test-PSFParameterBinding "Day")
{
```

}

Snippet as part of a function.
Will check whether the parameter "Day" was bound.
If yes, whatever logic is in the conditional will be executed.

### EXAMPLE 2

```powershell
Test-PSFParameterBinding -Not 'Login', 'Spid', 'ExcludeSpid', 'Host', 'Program', 'Database'
```

Returns whether none of the parameters above were specified.

### EXAMPLE 3

```powershell
Test-PSFParameterBinding -And 'Login', 'Spid', 'ExcludeSpid', 'Host', 'Program', 'Database'
```

Returns whether any of the specified parameters was not bound

## Parameters

### And

All specified parameters must be present, rather than at least one of them.

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

### BoundParameters

The hashtable of bound parameters.
Is automatically inherited from the calling function via default value.
Needs not be bound explicitly.

```yaml
Type: System.Object
DefaultValue: (Get-PSCallStack)[0].InvocationInfo.BoundParameters
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

### Mode

Parameters can be explicitly bound or as scriptblocks to be invoked for each item piped to the command.
The mode determines, which will be tested for.
Supported Modes: Any, Explicit, PipeScript.
By default, any will do.
Whether a parameter was bound as PipeScript is only detectable during the begin block.

```yaml
Type: System.String
DefaultValue: Any
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

### Not

Reverses the result.
Returns true if NOT bound and false if bound.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- Reverse
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

### ParameterName

The name(s) of the parameter that is tested for being bound.
By default, the check is true when AT LEAST one was bound.

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


