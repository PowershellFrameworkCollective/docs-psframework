---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Save-PSFModule

## SYNOPSIS
Downloads modules to a specified path.

## SYNTAX

### ByName (Default)
```
Save-PSFModule [-Name] <String[]> [-Version <String>] [-Prerelease] [-Path] <String>
 [-ComputerName <ComputerParameter[]>] [-SkipDependency] [-AuthenticodeCheck] [-Force]
 [-Credential <PSCredential>] [-RemotingCredential <PSCredential>] [-ThrottleLimit <Int32>]
 [-Repository <String[]>] [-TrustRepository] [-Type <String>] [-PathInternal <Object>] [-Cmdlet <Object>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByObject
```
Save-PSFModule [-Path] <String> [-ComputerName <ComputerParameter[]>] [-SkipDependency] [-AuthenticodeCheck]
 [-Force] [-Credential <PSCredential>] [-RemotingCredential <PSCredential>] [-ThrottleLimit <Int32>]
 [-Repository <String[]>] [-TrustRepository] [-Type <String>] -InputObject <Object[]> [-PathInternal <Object>]
 [-Cmdlet <Object>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Downloads modules to a specified path.
Supports flexible repository resolution, modern versioning and deployment to remote systems.

When specifying remote computers, all file transfer is performed via PSRemoting only.

ErrorAction is only honored for local deployments.

## EXAMPLES

### EXAMPLE 1
```
Save-PSFModule EntraAuth -Path C:\temp
```

Downloads the module "EntraAuth" to the local C:\temp path.

### EXAMPLE 2
```
Save-PSFModule -Name EntraAuth -Path 'C:\Program Files\WindowsPowerShell\Modules'
```

Downloads the latest version of EntraAuth and places it where both PowerShell versions look for modules.

### EXAMPLE 3
```
Save-PSFModule -Name EntraAuth -Path 'C:\Program Files\WindowsPowerShell\Modules' -Force
```

Downloads the latest version of EntraAuth and places it where both PowerShell versions look for modules.
If the module has already been installed previously in the same version, it will replace the old install with the newly downloaded one.

### EXAMPLE 4
```
Save-PSFModule -Name EntraAuth -Path '\\server1\C$\Program Files\WindowsPowerShell\Modules'
```

Downloads the latest version of EntraAuth and places it where both PowerShell versions look for modules ...
on computer "server1".
File transfer happens via SMB - lets hope that works.

### EXAMPLE 5
```
Save-PSFModule -Name EntraAuth -Path 'C:\Program Files\WindowsPowerShell\Modules' -ComputerName server1
```

Downloads the latest version of EntraAuth and places it where both PowerShell versions look for modules ...
on computer "server1".
File transfer happens via PSRemoting, assuming our account has local admin rights on the remote computer.

### EXAMPLE 6
```
Save-PSFModule -Name EntraAuth -Path 'C:\Program Files\WindowsPowerShell\Modules' -ComputerName server1 -RemotingCredential $cred
```

Downloads the latest version of EntraAuth and places it where both PowerShell versions look for modules ...
on computer "server1".
File transfer happens via PSRemoting, assuming the account in $cred has local admin rights on the remote computer.

### EXAMPLE 7
```
Save-PSFModule -Name EntraAuth -Path '/usr/local/share/powershell/Modules' -ComputerName $sessions
```

Downloads the latest version of EntraAuth and places it where both PowerShell versions look for modules on linux distributions ...
on the computers previously connected.
On PowerShell 7, these can be remoting sessions established via SSH.
File transfer happens via PSRemoting.

## PARAMETERS

### -Name
Name of the module to download.

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
Version constrains for the module to save.
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

### -Path
Where to store the modules.
If used together with the -ComputerName parameter, this is considered a local path from within the context of a remoting session to that computer,
If you want to deploy a module to "\\\\server1\C$\Scripts\Modules" provide "C:\Scripts\Modules" as -Path, with "-ComputerName server1".
Unless you actually WANT to deploy without remoting but with SMB (in which case do not provide a -ComputerName)
See examples for less confusion :)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComputerName
The computers to deploy the modules to.
Accepts both names or established PSRemoting sessions.
The -Path parameter will be considered as a local path from within a remoting session.
If you want to deploy a module to "\\\\ComputerName\C$\Scripts\Modules" provide "C:\Scripts\Modules" as -Path.
See examples for less confusion :)

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

### -PathInternal
For internal use only.
Used to pass scope-based path resolution from Install-PSFModule into Save-PSFModule.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cmdlet
The $PSCmdlet variable of the calling command, used to ensure errors happen within the scope of the caller, hiding this command from the user.
Should be used when trying to hide Save-PSFModule - e.g.
when called from Install-PSFModule.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $PSCmdlet
Accept pipeline input: False
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
