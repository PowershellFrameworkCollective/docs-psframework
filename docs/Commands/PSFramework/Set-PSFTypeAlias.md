---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Set-PSFTypeAlias
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFTypeAlias
---

# Set-PSFTypeAlias

## Synopsis

Registers or updates an alias for a .NET type.

## Syntax

### Name

```
Set-PSFTypeAlias [-AliasName] <string> [-TypeName] <string> [<CommonParameters>]
```

### Hashtable

```
Set-PSFTypeAlias [-Mapping] <hashtable> [<CommonParameters>]
```

## Description

Registers or updates an alias for a .NET type.
Use this function during module import to create shortcuts for typenames users can be expected to interact with directly.

## Examples

### EXAMPLE 1

```powershell
Set-PSFTypeAlias -AliasName 'file' -TypeName 'System.IO.File'
```

Creates an alias for the type 'System.IO.File' named 'file'

### EXAMPLE 2

```powershell
Set-PSFTypeAlias -Mapping @{
	file = 'System.IO.File'
	path = 'System.IO.Path'
}
```

Creates an alias for the type 'System.IO.File' named 'file'
Creates an alias for the type 'System.IO.Path' named 'path'

## Parameters

### AliasName

The short and useful alias for the type.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Mapping

A hashtable of alias to typename mappings.
Useful to registering a full set of type aliases.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Hashtable
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TypeName

The full name of the type.
Example: 'System.IO.FileInfo'

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


