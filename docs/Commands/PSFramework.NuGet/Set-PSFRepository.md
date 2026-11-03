---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFRepository
---

# Set-PSFRepository

## Synopsis

Configure existing powershell repositories or define a new one.

## Syntax

### __AllParameterSets

```
Set-PSFRepository [-Name] <string> [-Priority <int>] [-Credential <pscredential>] [-Uri <string>]
 [-Trusted <bool>] [-Type <string>] [-Persist] [<CommonParameters>]
```

## Description

Configure existing powershell repositories or define a new one.
This allows you to modify their metadata, notably registering credentials to use on all requests or modifying its priority.
For defining new repositories, it is required to at least define "Type" and "Uri"

Some updates - the Uri and Trusted state - require updating the configuration on the PSGet repository settings, rather than just being contained within this module.
The command will handle that, which will be slightly slower and also affect direct use of the PSGet commands (such as install-Module or Install-PSResource).

Settings will apply to all repositories with the same name.
If you have the same repository configured in both V2 and V3, they BOTH will receive the update.

## Examples

### EXAMPLE 1

```powershell
Set-PSFRepository -Name AzDevOps -Credential $cred
```

Assigns for the repository "AzDevOps" the credentials stored in $cred.
All subsequent PSGet calls through this module will be made using those credentials.

## Parameters

### Credential

Credentials to use on all requests against the repository.

```yaml
Type: System.Management.Automation.PSCredential
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

### Name

Name of the repository to modify.
Wildcards not supported (unless you actually name a repository with a wildcard in the name.
In which case you probably want reconsider your naming strategy.)

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
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

### Persist

Whether the settings should be remembered.
If settings are not persisted, they only last until the console is closed.
When persisting credentials, they are - at least on windows - stored encrypted in registry (HKCU) and are only readable by the same user on the same computer.

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

### Priority

The priority the repository should have.
Lower-numbered repositories will beu sed before repositories with higher numbers.

```yaml
Type: System.Int32
DefaultValue: 0
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

### Trusted

Whether the repository is considered trusted.

```yaml
Type: System.Boolean
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

### Type

What version of PSGet it should use.
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

### Uri

The Uri from which modules are installed (and to which they are published).
Will update the PSGet repositories objects.

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


