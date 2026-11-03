---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFParameterClassMapping
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFParameterClassMapping
---

# Register-PSFParameterClassMapping

## Synopsis

Registers types to a parameter classes input interpretation.

## Syntax

### __AllParameterSets

```
Register-PSFParameterClassMapping [-ParameterClass] <ParameterClasses> [-TypeName] <string>
 [-Properties] <string[]> [-EnableException] [<CommonParameters>]
```

## Description

The parameter classes shipped in PSFramework can be extended to support input of an unknown object type.
In order to accomplish that, it is necessary to register the name of that type (and the properties to use) using this command.

On input interpretation, it will check the TypeNames property on the PSObject for evaluation.
This means you can also specify custom PSObjects by giving them a dedicated name.

## Examples

### EXAMPLE 1

```powershell
Register-PSFParameterClassMapping -ParameterClass 'Computer' -TypeName 'microsoft.activedirectory.management.adcomputer' -Properties 'DNSHostName', 'Name'
```

This extends the computer parameter class by ...
- having it accept the type 'microsoft.activedirectory.management.adcomputer'
- having it use the 'DNSHostName' property if available, falling back to 'Name' if necessary

## Parameters

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

### ParameterClass

The parameter class to extend.

```yaml
Type: PSFramework.Parameter.ParameterClasses
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

### Properties

The properties to check.
When processing an object of this type, it will try to access the properties in this order, trying to make something fit the intended result.
The first property that is a fit for the parameter class is chosen, other ones are ignored.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TypeName

The name of the type to register.

```yaml
Type: System.String
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


