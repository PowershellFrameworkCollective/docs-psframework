---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: ConvertTo-PSFHashtable
---

# ConvertTo-PSFHashtable

## Synopsis

Converts an object into a hashtable.

## Syntax

### __AllParameterSets

```
ConvertTo-PSFHashtable [-Include <string[]>] [-Exclude <string[]>] [-CaseSensitive] [-IncludeEmpty]
 [-ExcludeNull] [-ExcludeEmptyString] [-ExcludeEmptyCollection] [-Inherit] [-InheritParameters]
 [-Remap <hashtable>] [-InputObject <psobject[]>] [-ReferenceCommand <string>]
 [-ReferenceParameterSetName <string>] [-AsPsfHashtable] [<CommonParameters>]
```

## Description

Converts an object into a hashtable.

- Use -Exclude to selectively blacklist properties / keys

- Use -Include to selectively whitelist properties / keys

- Use -Inherit to inherit values from variables when missing keys explicitly included in -Include


Optimized to selectively convert $PSBoundParameters for passing through parameters to internal command calls.

## Examples

### Example 1

```powershell
Get-ChildItem | ConvertTo-PSFHashtable
```

Scans all items in the current path and converts those objects into hashtables.

_

### Example 2

```powershell
$parameters = $PSBoundParameters | ConvertTo-PSFHashtable -Include ComputerName, Credential, Target -Inherit
```

Clones the bound parameters into a new hashtable that can now be used for splatting- Only parameters explicitly specified or with default values will be included.

## Parameters

### AsPsfHashtable

The return object(s) will be of the special type "PsfHashtable", rather than a regular hashtable.
This will behave like a regular hashtable, but also supports defining a default value when resolving a key that has not been defined.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### CaseSensitive

Make Include and Exclude name-filtering case sensitive.
Will be ignored when also specifying the "AsPsfHashtable" parameter.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### Exclude

The propertynames to exclude.
Must be full property-names, no wildcard/regex matching.

```yaml
Type: System.String[]
DefaultValue: None
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

### ExcludeEmptyCollection

{{ Fill ExcludeEmptyCollection Description }}

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
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

### ExcludeEmptyString

{{ Fill ExcludeEmptyString Description }}

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
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

### ExcludeNull

{{ Fill ExcludeNull Description }}

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
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

### Include

The propertynames to include.
Must be full property-names, no wildcard/regex matching.

```yaml
Type: System.String[]
DefaultValue: None
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

### IncludeEmpty

By default, only properties on the input object are included.
In order to force all properties defined in -Include to be included, specify this switch.
Keys added through this have an empty ($null) value.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### Inherit

By default, only properties on the input object are included.
With this parameter, missing keys are substituted for by looking in the caller scope for variables with the same name.
This is explicitly designed to allow inheriting default parameter values when cloning $PSBoundParameters.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### InheritParameters

Automatically include all values from the parameters of the calling command or script.
This will include all parameters that were explicitly bound or have default parameter values, unless they have been excluded or are not part of a spceified -ReferenceCommand.
Combine with -IncludeEmpty to also include parameters with neither default value nor being bound.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### InputObject

The object(s) to convert

```yaml
Type: System.Management.Automation.PSObject[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ReferenceCommand

Only include keys that map to the parameters of the specified command.

```yaml
Type: System.String
DefaultValue: None
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

### ReferenceParameterSetName

When mapping keys to the parameters of command, only apply those that are part of this parameter set.

```yaml
Type: System.String
DefaultValue: None
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

### Remap

Rename keys from the input object.
Provide a hashtable mapping the original property name (key) to the intended name (value).

```yaml
Type: System.Collections.Hashtable
DefaultValue: None
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

## Notes





