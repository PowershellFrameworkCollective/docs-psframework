---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Update-PSFRepository
---

# Update-PSFRepository

## Synopsis

Executes configured repository settings.

## Syntax

### __AllParameterSets

```
Update-PSFRepository [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

Executes configured repository settings.
Using configuration settings - for example applied per GPO or configuration file - it is possible to define intended repositories.

The configuration settings must be named as 'PSFramework.NuGet.Repositories.<Repository Name>.<Setting>'

Available settings:
- Uri: Url or filesystem path to the repository.
Used for both install and publish.
- Priority: Priority of a PowerShell Repository.
Numeric value, determines repository precedence.
- Type: What kind of PowerShellGet version to apply the configuration to.
Details on the options below.
Defaults to 'Any'.
- Trusted: Whether the repository should be trusted.
Can be set to 0, 1, $false or $true.
Defaults to $true.
- Present: Whether the repository should exist at all.
Can be set to 0, 1, $false or $true.
Defaults to $true.
           Allows creating delete orders.
Does not differentiate between V2 & V3
   - Proxy: Link to the proxy to use.
Property only available when creating a new repository, not for updating an existing one.
  
   Supported "Type" settings to handle different PowerShellGet versions:
- Any: Will register as V3 if available, otherwise V2.
Will not update to V3 if already on V2.
- Update: Will register under highest version available, upgrading from older versions if already available on old versions
- All: Will register on ALL available versions
- V2: Will only register on V2.
V3 - if present and configured - will be unregistered.
- V2Preferred: Will only register on V2.
If V2 does not exist, existing V3 repositories will be allowed.
- V3: Will only register on V3.
If V2 is present, it will be unregistered, irrespective of whether V3 is available.

## Examples

### EXAMPLE 1

```powershell
Update-PSFRepository
```

Executes configured repository settings, creating, updating and deleting repositories as defined.

## Parameters

### Confirm

If this switch is enabled, you will be prompted for confirmation before executing any operations that change state.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### WhatIf

If this switch is enabled, no actions are performed but informational messages will be displayed that explain what would happen if the command were to run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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


