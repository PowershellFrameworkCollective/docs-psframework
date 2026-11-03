---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFHashtable
---

# New-PSFHashtable

## Synopsis

Creates a new PSFHashtable, which can have a default value set.

## Syntax

### Default

```
New-PSFHashtable [-Hashtable <hashtable>] [-DefaultValue <Object>] [<CommonParameters>]
```

### PassThru

```
New-PSFHashtable [-Hashtable <hashtable>] [-PassThru] [<CommonParameters>]
```

### Calculator

```
New-PSFHashtable [-Hashtable <hashtable>] [-Calculator <scriptblock>] [<CommonParameters>]
```

## Description

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
$hashtable['Foo'] # 42

## Examples

### EXAMPLE 1

```powershell
New-PSFHashtable
```

Returns a simple PSFHashtable, functionally the same as a regular hashtable.
It comes with a .SetDefaultValue($object) method to later define a default value.

### EXAMPLE 2

```powershell
New-PSFHashtable -DefaultValue 42
```

Returns an empty PSFHashtable which will by default return 42.

### EXAMPLE 3

```powershell
New-PSFHashtable -Hashtable $originHash -DefaultValue $false
```

Returns a PSFHashtable that is a copy of the hashtable in $originHash, which will by default return $false when resolving undefined keys.

### EXAMPLE 4

```powershell
New-PSFHashtable -Hashtable $originHash -PassThru
```

Returns a PSFHashtable that is a copy of the hashtable in $originHash, which will by default return the key itself when resolving undefined keys.

### EXAMPLE 5

```powershell
New-PSFHashtable -Calculator { (Get-Volume | Sort-Object SizeRemaining -Descending)[0] }
```

Returns an empty PSFHashtable which will by default return the volume with the most space remaining.

## Parameters

### Calculator

When resolving a key not specified on the hashtable, use this logic to determine the result.
Receives the key as its sole input / argument / $_

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Calculator
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### DefaultValue

The default value returned by the hashtable, when resolving a key not specified on the hashtable.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Hashtable

An original hashtable to build the PSFHashtable around.
This will prepopulate the hashtable with the key/value pairs of the input hashtable.
This effectively clones the input hashtable, the new PSFHashtable is not a reference to the original input.

```yaml
Type: System.Collections.Hashtable
DefaultValue: '@{ }'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PassThru

When resolving a key not specified on the hashtable, return the key instead of nothing.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: PassThru
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


