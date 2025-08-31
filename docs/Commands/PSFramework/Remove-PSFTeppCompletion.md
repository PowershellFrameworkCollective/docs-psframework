---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Remove-PSFTeppCompletion

## SYNOPSIS
Removes a previously added completion result from a tab completion script.

## SYNTAX

```
Remove-PSFTeppCompletion [-Name] <String> [-Options] <Object[]> [<CommonParameters>]
```

## DESCRIPTION
Removes a previously added completion result from a tab completion script.
These can be added using Add-PSFTeppCompletion or trained using Import-PSFTeppCompletion.
This command has no effect on automatically calculated tab completions!

## EXAMPLES

### EXAMPLE 1
```
Remove-PSFTeppCompletion -Name 'Alcohol.Type' -Options 'Mojito', 'Caipirinha'
```

Removes the two listed drinks from the list of legal completions.

## PARAMETERS

### -Name
Name of the tab completion scriptblock to remove from.
Use Register-PSFTeppScriptblock to define a new completion scriptblock.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Completion

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Options
The completion options to remove.
Must be either the string value of the completion or a hashtable with the "Text" key containing the completion value.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
