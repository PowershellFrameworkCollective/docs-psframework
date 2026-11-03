---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFSupportDataProvider
---

# Register-PSFSupportDataProvider

## Synopsis

Registers additional data collection logic for the PSFramework Support Package.

## Syntax

### __AllParameterSets

```
Register-PSFSupportDataProvider [-Name] <string> [-ScriptBlock] <scriptblock> [<CommonParameters>]
```

## Description

Registers additional data collection logic for the PSFramework Support Package.
This allows your module to include its own debugging information for the support package.

This logic is used in the New-PSFSupportPackage command.

## Examples

### EXAMPLE 1

```powershell
Register-PSFSupportDataProvider -Name MyModule.MyData -ScriptBlock $code
```

Registers the code in $code as a data provider for the support package.
In case of somebody running the "New-PSFSupportPackage" this code will be executed and its results included in the file.

## Parameters

### Name

Name of the support data provider.

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

### ScriptBlock

Code that generates support data.
Should provide information helpful with troubleshooting your code.

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


