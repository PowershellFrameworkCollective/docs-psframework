---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Register-PSFPsd1Converter

## SYNOPSIS
Registers a new piece of logic used to convert specific data types to PSD1 format.

## SYNTAX

### Script (Default)
```
Register-PSFPsd1Converter -AssignedType <Type[]> -Code <PsfScriptBlock> [-DefaultResult <String>]
 [-OnErrorDefault] [-Properties <Hashtable>] [<CommonParameters>]
```

### Binary
```
Register-PSFPsd1Converter -AssignedType <Type[]> -Converter <IPsd1Converter> [<CommonParameters>]
```

## DESCRIPTION
Registers a new piece of logic used to convert specific data types to PSD1 format.
This is used by ConvertTo-PSFPsd1 or Export-PSFPowerShellDataFile.

There are two fundamental ways to define these extensions:
- Provide a data type written in C#
- Provide a Scriptblock

In either way, they target a specific datatype that they will convert.
When processing elements in a object into a psd1 document, each element - property value or value of a subproperty - is processed based on its data type.
The decision tree is thus processed:
- Is it null?
Then do '$null'
- Is it an Enum?
Then do "'\<Text Value\>'"
- Do we have a converter defined for this exact type?
If so, use it.
- Is it a dictionary / hashtable?
Then use the predefined converter for that
- Do we have a converter defined for a type the input can be assigned to (Parent Type, Interface, etc.)?
If so, use it (in case of multiple matches, a random one is picked).
- Use the predefined default converter for all other PowerShell objects.

This means, even if you define a converter for a specific interface, if the object processed is also a dictionary, your converter will be ignored.

\> Data Type written in C#
For this, you need to define a class implementing the interface: PSFramework.Data.IPsd1Converter
Which essentially requires a single "Convert" method to return the string that becomes part of the PSD1 document.

\> Scriptblock
A scriptblock as a converter is a fairly simple thing and allows you to do your conversion in script.
The item to convert is found under "$_", the scriptblock must return the result string as output.
More details on the parameter "Code"'s documentation.
ScriptBlocks offer inherently worse performance than C#-based converters.

## EXAMPLES

### EXAMPLE 1
```
Register-PSFPsd1Converter -Code { "'{0}'" -f $this.Converter.EscapeQuotes($_.ComputerName) } -AssignedType ([PSFramework.Parameter.ComputerParameter])
```

Registers a converter that will take the \[PSFComputer\] parameter class and serialize it into the ComputerName, no matter what data was provided for it.

## PARAMETERS

### -AssignedType
The type that should be converted.
The same converter can be assigned to multiple types.
Can be either a direct datatype or an interface, affecting all types implementing that type.
In case of a direct datatype, classes inheriting from that type will also be affected, unless a direct assignments overrides this.

```yaml
Type: Type[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Code
The script-code that should convert data into PSD1 string.
There are several special considerations when implementing this:

- The value to convert is in the automatic "$_" variable.
- It receives two arguments: "Depth" & "Converter"
  - Depth is current indentation level, each number representing 4 whitespaces.
A Depth of 2 becomes 8 whitespaces.
  - Converter is the entire conversion runtime and offers some tooling for your scriptblock (covered below)
- The automatic "$this" variable contains a hashtable with all details, including a few important properties:
  - "Parents" are parent objects.
This fills up as we delve into sub-properties and sub-properties of sub-properties.
    The Parents are used to determine depth levels compared to the "MaxDepth" property on the Converter.
Use this to determine, whether to truncate your results due to depth being exceeded.
	It also should be used to prevent infinite recursion - if your current object is already part of the parents, stop this from continuing.
  - "Converter" is the same thing as the argument received.
  - "Properties" is a hashtable with settings defined with the script converter.
Intended for if you want to provide some data with your conversion scriptblock.
  - "Depth" is the current indentation depth, which is not necessarily the same as the nested property depth used to determine, when to truncate the result.
  - "Value" is the exact same thing as what is already available in "$_"
- The scriptblock must return a string, and only the first output element will be considered

\> Converter
The converter object manages the runtime and offers some settings and methods that may be useful:
It has the "Convert" method, which allows you to use the conversion system for some of the properties on your object, while doing your own thing on the others.
This method comes with two overloads:

Convert(System.Object Value)
Convert(System.Object Value, System.Object\[\] Parents, int Depth)

Generally, you want to use the latter one, to ensure MaxDepth, recursion protection and indentation levels remain consistent.

It also comes with an "EscapeQuotes" method, that allows you to safely escape single-quotes (and not just the ones on your keyboard, but also typographic/"curly" ones).
The "MaxDepth" property gives you access to the maximum nested property depth the user wanted to serialize.
It's up to you to actually respect that (or not, as you chose).
Note: MaxDepth should not be compared to "Depth" (which is the indentation depth), but rather to the number of items in "Parents".

Finally, the "Config" property on the converter allows your converter scriptblock to accept config settings at the conversion level, rather than on the converter (which would be constant for _all_ conversions).
It is a hashtable users may chose to provide when calling ConvertTo-PSFPsd1 or Export-PSFPowerShellDataFile.

```yaml
Type: PsfScriptBlock
Parameter Sets: Script
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultResult
The default result to use when the scriptblock runs into a terminating error.
Will not actually be applied, unless "OnErrorDefault" is set.
Defaults to: '$null'

```yaml
Type: String
Parameter Sets: Script
Aliases:

Required: False
Position: Named
Default value: $null
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnErrorDefault
When the converter fails with a terminating error, use the default value, rather than kill the conversion.
By default, an error during a conversion scriptblock will fail the entire transforamtion.

```yaml
Type: SwitchParameter
Parameter Sets: Script
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Properties
A hashtable of extra information to provide to the conversion scriptblock.
This data will be the same in all conversion calls, no matter the object being processed.
See the description for the code parameter on how to access per-conversion config settings.

```yaml
Type: Hashtable
Parameter Sets: Script
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Converter
The instance of a fully implemented (in c#) Converter.
It comes with properties and behaviors as you defined it.

```yaml
Type: IPsd1Converter
Parameter Sets: Binary
Aliases:

Required: True
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
