---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFRepository
---

# Get-PSFRepository

## Synopsis

Lists available PowerShell repositories.

## Syntax

### __AllParameterSets

```
Get-PSFRepository [[-Name] <string[]>] [[-Type] <string>] [<CommonParameters>]
```

## Description

Lists available PowerShell repositories.
Includes both classic (V2 | Get-PSRepository) and new (V3 | Get-PSResourceRepository) repositories.
This will also include additional metadata, including priority, which in this module is also applicable to classic repositories.

Note on Status:
In V2 repositories, the status can show "NoPublish" or "NoInstall".
This is determined by whether it has been bootstrapped at the system level.
If you have already bootstrapped it in user-mode, this may not be reflected correctly.
If your computer is internet-facing, it can also automatically bootstrap itself without any issues.

## Examples

### EXAMPLE 1

```powershell
Get-PSFRepository
```

List all available repositories.

## Parameters

### Name

Name of the repository to list.

```yaml
Type: System.String[]
DefaultValue: '*'
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

### Type

What kind of repository to return:
+ All: (default) Return all, irrespective of type
+ V2: Only return classic repositories, as would be returned by Get-PSRepository
+ V3: Only return modern repositories, as would be returned by Get-PSResourceRepository

```yaml
Type: System.String
DefaultValue: All
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


