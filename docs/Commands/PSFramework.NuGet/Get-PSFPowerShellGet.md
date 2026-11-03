---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFPowerShellGet
---

# Get-PSFPowerShellGet

## Synopsis

Returns the availability state for PowerShellGet.

## Syntax

### __AllParameterSets

```
Get-PSFPowerShellGet [[-ComputerName] <ComputerParameter[]>] [[-Credential] <pscredential>]
 [<CommonParameters>]
```

## Description

Returns the availability state for PowerShellGet.
Will verify, whether required prerequisites for module installation or publishing exist
for v1/v2 versions of PowerShellGet.
It will only check for the all users configuration, ignoring binaries stored in appdata.

## Examples

### EXAMPLE 1

```powershell
Get-PSFPowerShellGet
```

Returns, what the local PowerShellGet configuration is like.

## Parameters

### ComputerName

The computer to scan.
Defaults to localhost.

```yaml
Type: PSFramework.Parameter.ComputerParameter[]
DefaultValue: $env:COMPUTERNAME
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

### Credential

Credentials to use for the connection to the remote computers.

```yaml
Type: System.Management.Automation.PSCredential
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


