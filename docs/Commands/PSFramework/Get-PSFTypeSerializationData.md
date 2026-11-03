---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFTypeSerializationData
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFTypeSerializationData
---

# Get-PSFTypeSerializationData

## Synopsis

Creates a type extension XML for serializing an object

## Syntax

### __AllParameterSets

```
Get-PSFTypeSerializationData [[-InputObject] <Object[]>] [[-Mode] <string>] [[-Serializer] <string>]
 [[-Method] <string>] [-Fragment] [<CommonParameters>]
```

## Description

Creates a type extension XML for serializing an object
Use this to register a type with a type serializer, so it will retain its integrity across process borders.

This is relevant in order to have an object retain its type when ...
- sending it over PowerShell Remoting
- writing it to file via Export-Clixml and reading it later via Import-Clixml

Note:
In the default serializer, all types registered must:
- Have all public properties be read & writable (the write needs not do anything, but it must not throw an exception).
- All non-public properties will be ignored.
- Come from an Assembly with a static name (like an existing dll file, not compiled at runtime).

## Examples

### EXAMPLE 1

```powershell
Get-PSFTypeSerializationData -InputObject 'My.Custom.Type'
```

Generates an XML text that can be used to register via Update-TypeData.

## Parameters

### Fragment

By setting this, the type XML is emitted without the outer XML shell, containing only the <Type> node(s).
Use this if you want to add the output to existing type extension xml.

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

### InputObject

The type to serialize.
- Accepts a type object
- The string name of the type
- An object, whose type will then be determined

```yaml
Type: System.Object[]
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

### Method

The serialization method to use.
By default, the PSFramework serialization method is used, which should work well enough, but requires the PSFramework to be present.

```yaml
Type: System.String
DefaultValue: GetSerializationData
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Mode

Whether all types listed should be generated as a single definition ('Grouped'; default) or as one definition per type.
Since multiple files have worse performance, it is generally recommended to group them all in a single file.

```yaml
Type: System.String
DefaultValue: Grouped
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Serializer

The serializer to use for the conversion.
By default, the PSFramework serializer is used, which should work well enough, but requires the PSFramework to be present.

```yaml
Type: System.String
DefaultValue: PSFramework.Serialization.SerializationTypeConverter
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


