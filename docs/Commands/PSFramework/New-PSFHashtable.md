---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# New-PSFHashtable

## SYNOPSIS
Creates a new PSFHashtable, which can have a default value set.

## SYNTAX

### Default (Default)
```
New-PSFHashtable [-Hashtable <Hashtable>] [-DefaultValue <Object>] [<CommonParameters>]
```

### PassThru
```
New-PSFHashtable [-Hashtable <Hashtable>] [-PassThru] [<CommonParameters>]
```

### Calculator
```
New-PSFHashtable [-Hashtable <Hashtable>] [-Calculator <ScriptBlock>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new PSFHashtable.
This is a type that acts the same as a regular hashtable for most purposes.
Its key differentiator is, that it supports defining a default value, in case a key is provided that has not been set before.

It also comes with a ".SetDefaultValue($object)" method to later change the default value.

Important note:
The pseudo-property notation to access values in hashtables also works for a PSFHashtable, but ONLY for keys already defined!
The default value requires an INDEX notation.
Example:

$hashtable = New-PSFHashtable -DefaultValue 42
$hashtable.Foo # nothing
$hashtable\['Foo'\] # 42

## EXAMPLES

### EXAMPLE 1
```
New-PSFHashtable
```

Returns a simple PSFHashtable, functionally the same as a regular hashtable.
It comes with a .SetDefaultValue($object) method to later define a default value.

### EXAMPLE 2
```
New-PSFHashtable -DefaultValue 42
```

Returns an empty PSFHashtable which will by default return 42.

### EXAMPLE 3
```
New-PSFHashtable -Hashtable $originHash -DefaultValue $false
```

Returns a PSFHashtable that is a copy of the hashtable in $originHash, which will by default return $false when resolving undefined keys.

### EXAMPLE 4
```
New-PSFHashtable -Hashtable $originHash -PassThru
```

Returns a PSFHashtable that is a copy of the hashtable in $originHash, which will by default return the key itself when resolving undefined keys.

### EXAMPLE 5
```
New-PSFHashtable -Calculator { (Get-Volume | Sort-Object SizeRemaining -Descending)[0] }
```

Returns an empty PSFHashtable which will by default return the volume with the most space remaining.

## PARAMETERS

### -Hashtable
An original hashtable to build the PSFHashtable around.
This will prepopulate the hashtable with the key/value pairs of the input hashtable.
This effectively clones the input hashtable, the new PSFHashtable is not a reference to the original input.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: @{ }
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultValue
The default value returned by the hashtable, when resolving a key not specified on the hashtable.

```yaml
Type: Object
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
When resolving a key not specified on the hashtable, return the key instead of nothing.

```yaml
Type: SwitchParameter
Parameter Sets: PassThru
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Calculator
When resolving a key not specified on the hashtable, use this logic to determine the result.
Receives the key as its sole input / argument / $_

```yaml
Type: ScriptBlock
Parameter Sets: Calculator
Aliases:

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

### PSFramework.Object.PsfHashtable
## NOTES

## RELATED LINKS
