---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Resolve-PSFPath
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Resolve-PSFPath
---

# Resolve-PSFPath

## Synopsis

Resolves a path.

## Syntax

### __AllParameterSets

```
Resolve-PSFPath [-Path] <string[]> [-Provider <string>] [-SingleItem] [-NewChild]
 [<CommonParameters>]
```

## Description

Resolves a path.
Will try to resolve to paths including some basic path validation and resolution.
Will fail if the path cannot be resolved (so an existing path must be reached at).

## Examples

### EXAMPLE 1

```powershell
Resolve-PSFPath -Path report.log -Provider FileSystem -NewChild -SingleItem
```

Ensures the resolved path is a FileSystem path.
This will resolve to the current folder and the file report.log.
Will not ensure the file exists or doesn't exist.
If the current path is in a different provider, it will throw an exception.

### EXAMPLE 2

```powershell
Resolve-PSFPath -Path ..\*
```

This will resolve all items in the parent folder, whatever the current path or drive might be.

## Parameters

### NewChild

Assumes one wishes to create a new child item.
The parent path will be resolved and must validate true.
The final leaf will be treated as a leaf item that does not exist yet.

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

### Path

The path to validate.

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

### Provider

Ensure the path is of the expected provider.
Allows ensuring one does not operate in the wrong provider.
Common providers include the filesystem, the registry or the active directory.

```yaml
Type: System.String
DefaultValue: ''
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

### SingleItem

Ensure the path should resolve to a single path only.
This may - intentionally or not - trip up wildcard paths.

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


