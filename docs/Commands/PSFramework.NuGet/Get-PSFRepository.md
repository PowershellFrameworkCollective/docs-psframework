---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Get-PSFRepository

## SYNOPSIS
Lists available PowerShell repositories.

## SYNTAX

```
Get-PSFRepository [[-Name] <String[]>] [[-Type] <String>] [<CommonParameters>]
```

## DESCRIPTION
Lists available PowerShell repositories.
Includes both classic (V2 | Get-PSRepository) and new (V3 | Get-PSResourceRepository) repositories.
This will also include additional metadata, including priority, which in this module is also applicable to classic repositories.

Note on Status:
In V2 repositories, the status can show "NoPublish" or "NoInstall".
This is determined by whether it has been bootstrapped at the system level.
If you have already bootstrapped it in user-mode, this may not be reflected correctly.
If your computer is internet-facing, it can also automatically bootstrap itself without any issues.

## EXAMPLES

### EXAMPLE 1
```
Get-PSFRepository
```

List all available repositories.

## PARAMETERS

### -Name
Name of the repository to list.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: *
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
What kind of repository to return:
+ All: (default) Return all, irrespective of type
+ V2: Only return classic repositories, as would be returned by Get-PSRepository
+ V3: Only return modern repositories, as would be returned by Get-PSResourceRepository

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: All
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
