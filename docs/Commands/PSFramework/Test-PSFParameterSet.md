---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFParameterSet
---

# Test-PSFParameterSet

## Synopsis

Tests, whether the command specified would resolve to the specified parameter set with the parameters provided.

## Syntax

### ByName

```
Test-PSFParameterSet -Name <string> -Parameters <string[]> -Sets <string[]> [<CommonParameters>]
```

### ByCommand

```
Test-PSFParameterSet -Command <CommandInfo> -Parameters <string[]> -Sets <string[]>
 [<CommonParameters>]
```

## Description

Tests, whether the command specified would resolve to the specified parameter set with the parameters provided.
This compares the parametersets on the command metadata with the names of the parameters you intend to provide,
then resolves the effective parameterset they would lead to.

Then compares them to the list of Parametersets provided and returns, whether the resolved parameterset would be one of them.

Note:
- If the command would not resolve to a legal parameterset, it will return $false.
- If the command would not be able to resolve to exactly one parameterset, it will return $false.
This takes the DefaultParameterSetName into account.
This is true even if the remaining Parametersets would include one or multiple of the looked-for Parametersets.

In consequence, this command cannot take input by pipeline into account (but specifying the name you would bind by pipeline as if explicit should work in most scenarios).
This command also cannot reliably evaluate dynamic parameters or Parametersets, as those are determined at runtime, not from Metadata.

## Examples

### EXAMPLE 1

```powershell
Test-PSFParameterSet -Name Connect-EntraService -Parameters $param.Keys -Sets 'Browser','DeviceCode'
```

Returns whether with the specified parameters, Connect-EntraService would end up using either the 'DeviceCode' or 'Browser' Parameterset.

### EXAMPLE 2

```powershell
Test-PSFParameterSet -Command (Get-Command -Name Resolve-TaskCredential) -Parameters $param.Keys -Sets 'Certificate'
```

Returns whether with the specified parameters, Resolve-TaskCredential would end up using the 'Certificate' Parameterset.
As the caller is resolving Resolve-TaskCredential before calling Test-PSFParameterSet, the command is resolved within the context of the caller and may be invisible to PSFramework without causing any issues.

## Parameters

### Command

The command object to evaluate.
Expects an object as returned by "Get-Command".
This is the more reliable option as opposed to "-Name" and generally preferred, if slightly less convenient to use.

```yaml
Type: System.Management.Automation.CommandInfo
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByCommand
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the command to test Parametersets for.
WARNING: This may easily fail, if PSFramework cannot find the command (e.g.
an internal command of another module).
For best reliability, use the "-Command" parameter instead.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Parameters

The names of the parameters provided to the command.
These are used to determine, which parameterset would be viable.

```yaml
Type: System.String[]
DefaultValue: ''
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

### Sets

The names of the Parametersets to check for.
If the effective Parameterset is any one of them the command returns $true.

```yaml
Type: System.String[]
DefaultValue: ''
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


