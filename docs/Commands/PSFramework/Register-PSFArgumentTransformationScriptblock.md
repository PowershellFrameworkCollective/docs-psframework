---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFArgumentTransformationScriptblock
---

# Register-PSFArgumentTransformationScriptblock

## Synopsis

Registers an input conversion scriptblock for use in Parameter Binding.

## Syntax

### __AllParameterSets

```
Register-PSFArgumentTransformationScriptblock [-Name] <string> [-Scriptblock] <scriptblock>
 [<CommonParameters>]
```

## Description

Registers an input conversion scriptblock for use in Parameter Binding.
It receives exactly one input - the parameter input to convert.
The scriptblock is expected to return the result in the expected type - only the first value returned is used.

If this conversion failes, it will still try to convert it with the default PowerShell type conversion.

The scriptblock registered here can later be referenced in your commands as a parameter attribute like this:
[PsfScriptTransformation("MyModule.User", [MyModule.User])]

- The first value is the name specified here.
- The second value is the expected data type.

## Examples

### EXAMPLE 1

```powershell
Register-PSFArgumentTransformationScriptblock -Name MyModule.User -Scriptblock $conversion
```

Registers the input conversion as defined in $conversion under "MyModule.User"

## Parameters

### Name

Name of the scriptblock.
The name can be arbitrary, but naming should consider the potential to conflict with other modules.

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

### Scriptblock

The script logic performing the conversion.

```yaml
Type: System.Management.Automation.ScriptBlock
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


