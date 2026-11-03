---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Install-PSFModule
---

# Install-PSFModule

## Synopsis

Installs PowerShell modules from a PowerShell repository.

## Syntax

### ByName

```
Install-PSFModule [-Name] <string[]> [-Version <string>] [-Prerelease] [-Scope <string>]
 [-ComputerName <ComputerParameter[]>] [-SkipDependency] [-AuthenticodeCheck] [-Force]
 [-Credential <pscredential>] [-RemotingCredential <pscredential>] [-ThrottleLimit <int>]
 [-Repository <string[]>] [-TrustRepository] [-Type <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### ByObject

```
Install-PSFModule -InputObject <Object[]> [-Scope <string>] [-ComputerName <ComputerParameter[]>]
 [-SkipDependency] [-AuthenticodeCheck] [-Force] [-Credential <pscredential>]
 [-RemotingCredential <pscredential>] [-ThrottleLimit <int>] [-Repository <string[]>]
 [-TrustRepository] [-Type <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

Installs PowerShell modules from a PowerShell repository.
They can be installed locally or to remote computers.

## Examples

### EXAMPLE 1

```powershell
Install-PSFModule -Name EntraAuth
```

Installs the EntraAuth module locally for the CurrentUser.

### EXAMPLE 2

```powershell
Install-PSFModule -Name ADMF -ComputerName AdminHost1, AdminHost2
```

Installs the ADMF module (and all of its dependencies) for All Users on the computers AdminHost1 and AdminHost2

### EXAMPLE 3

```powershell
Install-PSFModule -Name string, PoshRSJob -ComputerName $sshSessions -Scope ScriptModules
```

Installs the String and PoshRSJob module to all computers with an established session in $sshSessions.
The modules will be installed to the "ScriptModules" scope - something that must have first been registered
using the Register-PSFModuleScope command.

## Parameters

### AuthenticodeCheck

Whether modules must be correctly signed by a trusted source.
Uses "Get-PSFModuleSignature" for validation.
Defaults to: $false
Default can be configured under the 'PSFramework.NuGet.Install.AuthenticodeSignature.Check' setting.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: (Get-PSFConfigValue -FullName 'PSFramework.NuGet.Install.AuthenticodeSignature.Check')
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

### ComputerName

The computers to deploy the modules to.
Accepts both names or established PSRemoting sessions.
All transfer happens via PowerShell Remoting.

If you provide names, by default this module will connect to the "Microsoft.PowerShell" configuration name.
To change that name, use the 'PSFramework.NuGet.Remoting.DefaultConfiguration' configuration setting.

```yaml
Type: PSFramework.Parameter.ComputerParameter[]
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

### Credential

The credentials to use for connecting to the Repository (NOT the remote computers).

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

### Force

Redeploy a module that already exists in the target path.
By default it will skip modules that do already exist in the target path.

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

### InputObject

The module to install.
Takes the output of Get-Module, Find-Module, Find-PSResource and Find-PSFModule, to specify the exact version and name of the module.
Even when providing a locally available version, the module will still be downloaded from the repositories chosen.

```yaml
Type: System.Object[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByObject
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the module to install.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByName
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Prerelease

Whether to include prerelease versions in the potential results.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### RemotingCredential

The credentials to use for connecting to remote computers we want to deploy modules to via remoting.
These will NOT be used for repository access.

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

### Repository

Repositories to install from.
Respects the priority order of repositories.
See Get-PSFRepository for available repositories (and their priority).
Lower numbers are installed from first.

```yaml
Type: System.String[]
DefaultValue: ((Get-PSFrepository).Name | Sort-Object -Unique)
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

### Scope

Where to install the module to.
Use Register-PSFModuleScope to add additional scopes to the list of options.
Scopes can either use a static path or dynamic code to calculate - per computer - where to install the module.
If not specified, it will default to:
- CurrentUser - for local installation (irrespective of whether the console is run "As Administrator" or not.)
- AllUsers - for remote installations when using the -ComputerName parameter.

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

### SkipDependency

Do not include any dependencies.
Works with PowerShellGet V1/V2 as well.

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

### ThrottleLimit

Up to how many computers to deploy the modules to in parallel.
Defaults to: 5
Default can be configured under the 'PSFramework.NuGet.Remoting.Throttling' setting.

```yaml
Type: System.Int32
DefaultValue: (Get-PSFConfigValue -FullName 'PSFramework.NuGet.Remoting.Throttling')
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

### TrustRepository

Whether we should trust the repository installed from and NOT ask users for confirmation.

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

### Type

What type of repository to download from.
V2 uses classic Save-Module.
V3 uses Save-PSResource.
Availability depends on the installed PSGet module versions and configured repositories.
Use Install-PSFPowerShellGet to deploy the latest versions of the package modules.

Only the version on the local computer matters, even when deploying to remote computers.

```yaml
Type: System.String
DefaultValue: All
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

### Version

Version constrains for the module to install.
Will use the latest version available within the limits.
Examples:
- "1.0.0": EXACTLY this one version
- "1.0.0-1.999.999": Any version between the two limits (including the limit values)
- "[1.0.0-2.0.0)": Any version greater or equal to 1.0.0 but less than 2.0.0
- "2.3.0-": Any version greater or equal to 2.3.0.

Supported Syntax:
<Prefix><Version><Connector><Version><Suffix>

Prefix: "[" (-ge) or "(" (-gt) or nothing (-ge)
Version: A valid version of 2-4 elements or nothing
Connector: A "," or a "-"
Suffix: "]" (-le) or ")" (-lt) or nothing (-le)

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByName
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


