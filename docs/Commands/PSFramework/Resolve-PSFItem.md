---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Resolve-PSFItem
---

# Resolve-PSFItem

## Synopsis

Resolves paths provided.

## Syntax

### __AllParameterSets

```
Resolve-PSFItem [[-Path] <string[]>] [[-LiteralPath] <string[]>] [[-Type] <string>]
 [[-ResolutionMode] <string>] [[-WarningMode] <string>] [[-ErrorMode] <string>]
 [[-ProviderName] <string>] [[-Cmdlet] <Object>] [<CommonParameters>]
```

## Description

Resolves paths provided.
This command is designed as the ultimate tool for resolving paths provided with all flow control decisions handled.

The key difference between this command and Resolve-PSFPath is that this command directly integrates into the caller for the purposes of error handling.
It also handles a lot of the flow control issues merging and refining input and informing about issues.

Resolve-PSFPath simply takes a path and resolves that one path.

## Examples

### EXAMPLE 1

```powershell
Resolve-PSFItem -Path $Path -LiteralPath $LiteralPath -Cmdlet $PSCmdlet
```

Searches all items found under the specified paths.

### EXAMPLE 2

```powershell
Resolve-PSFItem -Path $Path -Type File -ResolutionMode AtLeastOne -WarningMode None -Cmdlet $PSCmdlet
```

Searches for all files under $Path.
No warning will ever be generated, but at least one file must be found, otherwise the calling command is killed with a terminating exception.

## Parameters

### Cmdlet

The $PSCmdlet object representing the calling command
If this parameter is specified, the error is executed in the context of the calling command, not Resolve-PSFItem.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ErrorMode

If the ResolutionMode has determined, that an error state exists, it is up to this ErrorMode parameter to determine just what kind of error state happens.
- Terminating: A terminating error is generated
- NonTerminating: A non-terminating error is generated
Default: Terminating

```yaml
Type: System.String
DefaultValue: Terminating
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### LiteralPath

The paths to resolve.
Does not interpret wildcards.

```yaml
Type: System.String[]
DefaultValue: ''
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

### Path

The paths to resolve.
Interprets wildcards.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ProviderName

Name of the provider generating the items.
Defaults to: FileSystem

```yaml
Type: System.String
DefaultValue: FileSystem
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ResolutionMode

The resolution mode determines in which situation the command figures there is an actual error.
ErrorMode then determines how bad of an error to generate.
- Any: Any number of results (including none) is ok.
In this scenario we do not generate an error.
- All: For each path provided, at least one item must be found.
Any input path without result causes an error.
- AtLeastOne: At least one path must have been found in total
- OnlyOne: More than one result in total causes an error.
Default: Any

```yaml
Type: System.String
DefaultValue: Any
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

### Type

What kind of item to return:
- Any: Return anything of the correct provider.
- File/Leaf: Only return file (or leaf) objects.
- Directory/Container: Only return directory (or container) objects.
Default: Any

```yaml
Type: System.String
DefaultValue: Any
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

### WarningMode

Warnings are potentially generated for each path that has no result.
Warning processing is independent of error handling.
- None: No warning is generated, no matter what
- One: One summary warning is generated, listing all input paths without a result
- All: One warning is generated for each path without results
Default: One

```yaml
Type: System.String
DefaultValue: One
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


