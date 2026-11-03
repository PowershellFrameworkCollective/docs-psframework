---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFModuleSignature
---

# Get-PSFModuleSignature

## Synopsis

Verifies, whether a module is properly signed.

## Syntax

### __AllParameterSets

```
Get-PSFModuleSignature [-Path] <string[]> [<CommonParameters>]
```

## Description

Verifies, whether a module is properly signed.
Iterates over every module file and verifies its signature.

The result reports:
- Overall signing status
- Signatures not Timestamped count
- Status Summary
- Subject of signing certs summary
- Issuer of signing certs summary

A module should be considered signed, when ...
- the over signing status is valid
- the subjects are expected (A microsoft module being signed by a microsoft code signing cert, etc.)
- the issuer CAs are expected (A microsoft module being signed by a cert issued by Microsoft, etc.)

## Examples

### EXAMPLE 1

```powershell
Get-PSFModuleSignature -Path .
```

Returns, whether the module in the current path is signed.

### EXAMPLE 2

```powershell
Get-PSFModuleSignature -Path \\contoso.com\it\coding\modules\ContosoTools
```

Verifies the code signing of the module stored in \\contoso.com\it\coding\modules\ContosoTools

### EXAMPLE 3

```powershell
Get-Module | Get-PSFModuleSignature
```

Verifies for each currently loaded module, whether they are signed.

## Parameters

### Path

Path to the module(s) to scan.
Should be the path to either a module-root or a psd1 file.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- ModuleBase
- FullName
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


