---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Search-PSFPowerShellGet
---

# Search-PSFPowerShellGet

## Synopsis

Scan for available PowerShellGet versions.

## Syntax

### __AllParameterSets

```
Search-PSFPowerShellGet [-UseCache] [<CommonParameters>]
```

## Description

Scan for available PowerShellGet versions.
The module caches the availability of PowerShellGet features on import.
It also automatically updates those settings when it knows to do so.

However, if you change the configuration outside of the PSFramework.NuGet module,
you may need to manually trigger the scan for the module to take the changes into account.

For example, if you use Install-Module, rather than Install-PSFModule to install the
latest version of PowerShellGet, use this command to make the module aware of the fact.
Otherwise, this will automatically be run the next time the module is loaded.

## Examples

### EXAMPLE 1

```powershell
Search-PSFPowerShellGet
```

Scan for available PowerShellGet versions.

## Parameters

### UseCache

Whether to respect the already available data and not do anything after all.
Mostly for internal use.

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


