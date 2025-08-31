---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Get-PSFTeppCompletion

## SYNOPSIS
Lists the registered completion options.

## SYNTAX

```
Get-PSFTeppCompletion [[-Name] <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Lists the registered completion options.
Using Add-PSFTeppCompletion, it is possible to manually provide values that will be offered during tab completion for a given argument completion script.
Alternatively, a completion scriptblock can be configured for "AutoTraining" during setup via "Register-PSFTeppScriptblock", which enables automatically
remembering values previously provided (By later calling Update-PSFTeppCompletion).

In either case, those values are stored in memory and retrieved using this command.

## EXAMPLES

### EXAMPLE 1
```
Get-PSFTeppCompletion
```

List all registered completion options for all completer scriptblocks.

## PARAMETERS

### -Name
Name of the completer scriptblock, for which to retrieve registered options.
Defaults to *

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: *
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
