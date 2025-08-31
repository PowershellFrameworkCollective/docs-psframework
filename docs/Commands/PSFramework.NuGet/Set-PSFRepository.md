---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Set-PSFRepository

## SYNOPSIS
Configure existing powershell repositories or define a new one.

## SYNTAX

```
Set-PSFRepository [-Name] <String> [-Priority <Int32>] [-Credential <PSCredential>] [-Uri <String>]
 [-Trusted <Boolean>] [-Type <String>] [-Persist] [<CommonParameters>]
```

## DESCRIPTION
Configure existing powershell repositories or define a new one.
This allows you to modify their metadata, notably registering credentials to use on all requests or modifying its priority.
For defining new repositories, it is required to at least define "Type" and "Uri"

Some updates - the Uri and Trusted state - require updating the configuration on the PSGet repository settings, rather than just being contained within this module.
The command will handle that, which will be slightly slower and also affect direct use of the PSGet commands (such as install-Module or Install-PSResource).

Settings will apply to all repositories with the same name.
If you have the same repository configured in both V2 and V3, they BOTH will receive the update.

## EXAMPLES

### EXAMPLE 1
```
Set-PSFRepository -Name AzDevOps -Credential $cred
```

Assigns for the repository "AzDevOps" the credentials stored in $cred.
All subsequent PSGet calls through this module will be made using those credentials.

## PARAMETERS

### -Name
Name of the repository to modify.
Wildcards not supported (unless you actually name a repository with a wildcard in the name.
In which case you probably want reconsider your naming strategy.)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Priority
The priority the repository should have.
Lower-numbered repositories will beu sed before repositories with higher numbers.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential
Credentials to use on all requests against the repository.

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

### -Uri
The Uri from which modules are installed (and to which they are published).
Will update the PSGet repositories objects.

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

### -Trusted
Whether the repository is considered trusted.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
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
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Persist
Whether the settings should be remembered.
If settings are not persisted, they only last until the console is closed.
When persisting credentials, they are - at least on windows - stored encrypted in registry (HKCU) and are only readable by the same user on the same computer.

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
