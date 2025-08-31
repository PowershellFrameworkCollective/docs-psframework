---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Add-PSFTeppCompletion

## SYNOPSIS
Adds a completion result to a tab completion script.

## SYNTAX

```
Add-PSFTeppCompletion [-Name] <String> [-Options] <Object[]> [<CommonParameters>]
```

## DESCRIPTION
Adds a completion result to a tab completion script.
This allows specifically adding individual values to provide when completing, no matter the actual completion logic.
Use Register-PSFTeppScriptblock to define a new completion scriptblock.

## EXAMPLES

### EXAMPLE 1
```
Add-PSFTeppCompletion -Name 'Alcohol.Type' -Options Wine, Beer, Vodka
```

Adds these options to the specified completion results: Wine, Beer, Vodka

### EXAMPLE 2
```
Add-PSFTeppCompletion -Name 'Alcohol.Type' -Options @{ Text = 'Mead'; ToolTip = 'Elixir of the angry gods' }
```

Add a completion to the completer named "Alcohol.Type", offering the text "Mead" and explaining it with the specified tooltip.

## PARAMETERS

### -Name
Name of the tab completion scriptblock to add to.
Use Register-PSFTeppScriptblock to define a new completion scriptblock.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Options
The completion objects to provide.
Provide either a basic string or a hashtable with some key/value pairs:
- Text: Mandatory.
The text to complete.
- ToolTip: A friendly text to provide some context when completing using CTRL+Space.
- ListItemText: The text to show in the completion menu, but different from the actual text inserted.
- ToolTipString: A localization key to resolve into the currently configured language for the ToolTip.
- ListItemTextString: A localization key to resolve into the currently configured language for the ListItemText.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
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
