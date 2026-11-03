---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFTypeSerializationData
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFTypeSerializationData
---

# Register-PSFTypeSerializationData

## Synopsis

Registers serialization xml Typedata.

## Syntax

### __AllParameterSets

```
Register-PSFTypeSerializationData [-TypeData] <string[]> [[-Path] <string>] [<CommonParameters>]
```

## Description

Registers serialization xml Typedata.
Use Get-PSFTypeSerializationData to generate such a string.
When building a module, consider shipping that xml type extension in a dedicated file as part of the module and import it as part of the manifest's 'TypesToProcess' node.

## Examples

### EXAMPLE 1

```powershell
Get-PSFTypeSerializationData -InputObject 'My.Custom.Type' | Register-PSFTypeSerializationData
```

Generates a custom type serialization xml and registers it.

## Parameters

### Path

Where the file should be stored before appending.
While type extensions can be added at runtime directly from memory, from file is more reliable.
By default, a PSFramework path is chosen.
The default path can be configured under the 'PSFramework.Serialization.WorkingDirectory' confguration setting.

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSFramework.Serialization.WorkingDirectory' -Fallback $script:path_typedata)
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

### TypeData

The data to register.
Generate with Get-PSFTypeSerializationData.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


