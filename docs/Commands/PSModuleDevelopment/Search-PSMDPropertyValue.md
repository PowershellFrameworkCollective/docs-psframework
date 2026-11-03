---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Search-PSMDPropertyValue
---

# Search-PSMDPropertyValue

## Synopsis

Recursively search an object for property values.

## Syntax

### __AllParameterSets

```
Search-PSMDPropertyValue [[-Value] <Object>] [-Object] <Object> [[-Depth] <int>] [-Match]
 [<CommonParameters>]
```

## Description

Recursively search an object for property values.
This can be useful to determine just where an object stores a given piece of information in scenarios, where objects either have way too many properties or a deeply nested data structure.

## Examples

### EXAMPLE 1

```powershell
Get-Mailbox Max.Mustermann | Search-PSMDPropertyValue -Object 'max.mustermann@contoso.com' -Match
```

Searches all properties on the mailbox of Max Mustermann for his email address.

## Parameters

### Depth

Default: 3
How deep should the query recurse.
The deeper, the longer it can take on deeply nested objects.

```yaml
Type: System.Int32
DefaultValue: 3
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Match

Search by comparing with regex, rather than equality comparison.

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

### Object

The object to search.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Value

The value to search for.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


