---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Get-PSFModuleScope

## SYNOPSIS
Lists the registered module scopes.

## SYNTAX

```
Get-PSFModuleScope [[-Name] <String>] [<CommonParameters>]
```

## DESCRIPTION
Lists the registered module scopes.
These are used as presets with Install-PSFModule's '-Scope' parameter.

Use Register-PSFModuleScope to add additional scopes.

## EXAMPLES

### EXAMPLE 1
```
Get-PSFModuleScope
```

Lists all registered module scopes.

## PARAMETERS

### -Name
The name of the scope to filter by.
Defaults to '*'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: *
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
