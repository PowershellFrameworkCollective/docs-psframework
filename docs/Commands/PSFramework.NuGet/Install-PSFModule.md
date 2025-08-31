---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Install-PSFModule

## SYNOPSIS
Installs PowerShell modules from a PowerShell repository.

## SYNTAX

### ByName (Default)
```
Install-PSFModule [-Name] <String[]> [-Version <String>] [-Prerelease] [-Scope <String>]
 [-ComputerName <ComputerParameter[]>] [-SkipDependency] [-AuthenticodeCheck] [-Force]
 [-Credential <PSCredential>] [-RemotingCredential <PSCredential>] [-ThrottleLimit <Int32>]
 [-Repository <String[]>] [-TrustRepository] [-Type <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByObject
```
Install-PSFModule [-Scope <String>] [-ComputerName <ComputerParameter[]>] [-SkipDependency]
 [-AuthenticodeCheck] [-Force] [-Credential <PSCredential>] [-RemotingCredential <PSCredential>]
 [-ThrottleLimit <Int32>] [-Repository <String[]>] [-TrustRepository] [-Type <String>] -InputObject <Object[]>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Installs PowerShell modules from a PowerShell repository.
They can be installed locally or to remote computers.

## EXAMPLES

### EXAMPLE 1
```
Install-PSFModule -Name EntraAuth
```

Installs the EntraAuth module locally for the CurrentUser.

### EXAMPLE 2
```
Install-PSFModule -Name ADMF -ComputerName AdminHost1, AdminHost2
```

Installs the ADMF module (and all of its dependencies) for All Users on the computers AdminHost1 and AdminHost2

### EXAMPLE 3
```
Install-PSFModule -Name string, PoshRSJob -ComputerName $sshSessions -Scope ScriptModules
```

Installs the String and PoshRSJob module to all computers with an established session in $sshSessions.
The modules will be installed to the "ScriptModules" scope - something that must have first been registered
using the Register-PSFModuleScope command.

## PARAMETERS

### -Name
Name of the module to install.

```yaml
Type: String[]
Parameter Sets: ByName
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Version
Version constrains for the module to install.
Will use the latest version available within the limits.
Examples:
- "1.0.0": EXACTLY this one version
- "1.0.0-1.999.999": Any version between the two limits (including the limit values)
- "\[1.0.0-2.0.0)": Any version greater or equal to 1.0.0 but less than 2.0.0
- "2.3.0-": Any version greater or equal to 2.3.0.

Supported Syntax:
\<Prefix\>\<Version\>\<Connector\>\<Version\>\<Suffix\>

Prefix: "\[" (-ge) or "(" (-gt) or nothing (-ge)
Version: A valid version of 2-4 elements or nothing
Connector: A "," or a "-"
Suffix: "\]" (-le) or ")" (-lt) or nothing (-le)

```yaml
Type: String
Parameter Sets: ByName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prerelease
Whether to include prerelease versions in the potential results.

```yaml
Type: SwitchParameter
Parameter Sets: ByName
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
Where to install the module to.
Use Register-PSFModuleScope to add additional scopes to the list of options.
Scopes can either use a static path or dynamic code to calculate - per computer - where to install the module.
If not specified, it will default to:
- CurrentUser - for local installation (irrespective of whether the console is run "As Administrator" or not.)
- AllUsers - for remote installations when using the -ComputerName parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComputerName
The computers to deploy the modules to.
Accepts both names or established PSRemoting sessions.
All transfer happens via PowerShell Remoting.

If you provide names, by default this module will connect to the "Microsoft.PowerShell" configuration name.
To change that name, use the 'PSFramework.NuGet.Remoting.DefaultConfiguration' configuration setting.

```yaml
Type: ComputerParameter[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipDependency
Do not include any dependencies.
Works with PowerShellGet V1/V2 as well.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AuthenticodeCheck
Whether modules must be correctly signed by a trusted source.
Uses "Get-PSFModuleSignature" for validation.
Defaults to: $false
Default can be configured under the 'PSFramework.NuGet.Install.AuthenticodeSignature.Check' setting.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Get-PSFConfigValue -FullName 'PSFramework.NuGet.Install.AuthenticodeSignature.Check')
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Redeploy a module that already exists in the target path.
By default it will skip modules that do already exist in the target path.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential
The credentials to use for connecting to the Repository (NOT the remote computers).

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemotingCredential
The credentials to use for connecting to remote computers we want to deploy modules to via remoting.
These will NOT be used for repository access.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ThrottleLimit
Up to how many computers to deploy the modules to in parallel.
Defaults to: 5
Default can be configured under the 'PSFramework.NuGet.Remoting.Throttling' setting.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Get-PSFConfigValue -FullName 'PSFramework.NuGet.Remoting.Throttling')
Accept pipeline input: False
Accept wildcard characters: False
```

### -Repository
Repositories to install from.
Respects the priority order of repositories.
See Get-PSFRepository for available repositories (and their priority).
Lower numbers are installed from first.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: ((Get-PSFrepository).Name | Sort-Object -Unique)
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrustRepository
Whether we should trust the repository installed from and NOT ask users for confirmation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
What type of repository to download from.
V2 uses classic Save-Module.
V3 uses Save-PSResource.
Availability depends on the installed PSGet module versions and configured repositories.
Use Install-PSFPowerShellGet to deploy the latest versions of the package modules.

Only the version on the local computer matters, even when deploying to remote computers.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: All
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
The module to install.
Takes the output of Get-Module, Find-Module, Find-PSResource and Find-PSFModule, to specify the exact version and name of the module.
Even when providing a locally available version, the module will still be downloaded from the repositories chosen.

```yaml
Type: Object[]
Parameter Sets: ByObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -WhatIf
If this switch is enabled, no actions are performed but informational messages will be displayed that explain what would happen if the command were to run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
If this switch is enabled, you will be prompted for confirmation before executing any operations that change state.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
