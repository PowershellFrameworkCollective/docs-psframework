---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Install-PSFPowerShellGet

## SYNOPSIS
Deploys the different versions of PowerShellGet and PSResourceGet.

## SYNTAX

```
Install-PSFPowerShellGet [[-Type] <String[]>] [[-ComputerName] <ComputerParameter[]>]
 [[-Credential] <PSCredential>] [[-SourcePath] <String>] [-Offline] [-NotInternal] [-UserMode]
 [<CommonParameters>]
```

## DESCRIPTION
Deploys the different versions of PowerShellGet and PSResourceGet.
With this command you can bulk-deploy PowerShell package management at scale.

It can install:
+ latest version of PowerShellGet & PackageManagement (elsewhere referred to as V2/classic)
+ binaries needed to use PowerShellGet & PackageManagement without bootstrapping from the internet
+ latest version of Microsoft.PowerShell.PSResourceget (elsewhere referred to as V3/modern)

It can do all that via PSRemoting, no SMB access needed.
This command needs no internet access to deploy them - you can transport it into an offline environment and still profit from that.

## EXAMPLES

### EXAMPLE 1
```
Install-PSFPowerShell -Type V3Latest -ComputerName (Get-ADComputer -Filter * -SearchBase $myOU)
```

This will install the latest version of PSResourceGet (V3) on all computers under the OU distinguishedName stored in $myOU

## PARAMETERS

### -Type
What should be deployed/installed.
+ V2Binaries: What is required to use Get V2.
+ V2Latest: The latest version of Get V2
+ V3Latest: The latest version of Get V3
Defaults to: V2Binaries

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: V2Binaries
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComputerName
The computer(s) to install to.
Can be names, ADComputer objects, SQL Server connection strings or alreadya established PSSessions.
Defaults to: localhost

```yaml
Type: ComputerParameter[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: $env:COMPUTERNAME
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Credential
Credentials to use for establishing new remoting connections.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourcePath
Custom Path to get the module sources to deplo.
You can download the latest module & binary versions from an online machine and then transport them into an offline environment.
This allows you to update the version of Get V3 being deployed, without having to update (or wait for an update) of PSFramework.NuGet.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: (Join-Path -Path (Get-PSFPath -Name AppData) -ChildPath 'PowerShell/PSFramework/modules/PowerShellGet')
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offline
Force a full offline mode.
By default, the module will on install automatically try to check online for a newer version.
It will still continue anyway if this fails, but if you want to avoid the network traffic & signals, use this switch.

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

### -NotInternal
Do not use the internally provided PowerShellGet module versions.
This REQUIRES you to either provide the module data via -SourcePath or to have live online access.

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

### -UserMode
Deploy the resource into user paths, rather than computer-wide.
This allows bootstrapping _without_ requiring elevation and is usually only needed on the local computer.
This mode is automatically selected when deploying to the local computer and not running PowerShell "As Administrator".
Only applies to / affects Windows computers.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
