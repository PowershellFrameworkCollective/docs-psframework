---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Save-PSFPowerShellGet
---

# Save-PSFPowerShellGet

## Synopsis

Downloads and provides the latest packages for both PowerShellGet V2 and V3.

## Syntax

### __AllParameterSets

```
Save-PSFPowerShellGet [[-Path] <string>] [<CommonParameters>]
```

## Description

Downloads and provides the latest packages for both PowerShellGet V2 and V3.
These can then be used by this module to deploy and bootstrap offline computers with package management tooling.

## Examples

### EXAMPLE 1

```powershell
Save-PSFPowerShellGet
```

Downloads and deploys the latest version of Get V2 & V3 to "%AppData%/PowerShell/PSFramework/modules/PowerShellGet"

## Parameters

### Path

The path where to deploy the module packages as zip-files.
Must be a directory.
Defaults to: %AppData%/PowerShell/PSFramework/modules/PowerShellGet

```yaml
Type: System.String
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


