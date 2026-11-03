---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Install-PSFPowerShellGet
---

# Install-PSFPowerShellGet

## Synopsis

Deploys the different versions of PowerShellGet and PSResourceGet.

## Syntax

### __AllParameterSets

```
Install-PSFPowerShellGet [[-Type] <string[]>] [[-ComputerName] <ComputerParameter[]>]
 [[-Credential] <pscredential>] [[-SourcePath] <string>] [-Offline] [-NotInternal] [-UserMode]
 [<CommonParameters>]
```

## Description

Deploys the different versions of PowerShellGet and PSResourceGet.
With this command you can bulk-deploy PowerShell package management at scale.

It can install:
+ latest version of PowerShellGet & PackageManagement (elsewhere referred to as V2/classic)
+ binaries needed to use PowerShellGet & PackageManagement without bootstrapping from the internet
+ latest version of Microsoft.PowerShell.PSResourceget (elsewhere referred to as V3/modern)

It can do all that via PSRemoting, no SMB access needed.
This command needs no internet access to deploy them - you can transport it into an offline environment and still profit from that.

## Examples

### EXAMPLE 1

```powershell
Install-PSFPowerShell -Type V3Latest -ComputerName (Get-ADComputer -Filter * -SearchBase $myOU)
```

This will install the latest version of PSResourceGet (V3) on all computers under the OU distinguishedName stored in $myOU

## Parameters

### ComputerName

The computer(s) to install to.
Can be names, ADComputer objects, SQL Server connection strings or alreadya established PSSessions.
Defaults to: localhost

```yaml
Type: PSFramework.Parameter.ComputerParameter[]
DefaultValue: $env:COMPUTERNAME
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Credential

Credentials to use for establishing new remoting connections.

```yaml
Type: System.Management.Automation.PSCredential
DefaultValue: ''
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

### NotInternal

Do not use the internally provided PowerShellGet module versions.
This REQUIRES you to either provide the module data via -SourcePath or to have live online access.

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

### Offline

Force a full offline mode.
By default, the module will on install automatically try to check online for a newer version.
It will still continue anyway if this fails, but if you want to avoid the network traffic & signals, use this switch.

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

### SourcePath

Custom Path to get the module sources to deplo.
You can download the latest module & binary versions from an online machine and then transport them into an offline environment.
This allows you to update the version of Get V3 being deployed, without having to update (or wait for an update) of PSFramework.NuGet.

```yaml
Type: System.String
DefaultValue: (Join-Path -Path (Get-PSFPath -Name AppData) -ChildPath 'PowerShell/PSFramework/modules/PowerShellGet')
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

What should be deployed/installed.
+ V2Binaries: What is required to use Get V2.
+ V2Latest: The latest version of Get V2
+ V3Latest: The latest version of Get V3
Defaults to: V2Binaries

```yaml
Type: System.String[]
DefaultValue: V2Binaries
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

### UserMode

Deploy the resource into user paths, rather than computer-wide.
This allows bootstrapping _without_ requiring elevation and is usually only needed on the local computer.
This mode is automatically selected when deploying to the local computer and not running PowerShell "As Administrator".
Only applies to / affects Windows computers.

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


