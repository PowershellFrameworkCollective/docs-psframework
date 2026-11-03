---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSMDParameterHelp
---

# Set-PSMDParameterHelp

## Synopsis

Sets the content of a CBH parameter help.

## Syntax

### __AllParameterSets

```
Set-PSMDParameterHelp [-Path] <string> [-CommandName] <string> [-ParameterName] <string>
 [-HelpText] <string> [-DisableCache] [<CommonParameters>]
```

## Description

Sets the content of a CBH parameter help.
This command will enumerate all files in the specified folder and subfolders.
Then scan all files with extension .ps1 and .psm1.
In each of these files it will check out function definitions, see whether the name matches, then update the help for the specified parameter if present.

In order for this to work, a few rules must be respected:
- It will not work with help XML, only with CBH xml
- It will not work if the help block is above the function.
It must be placed within.
- It will not ADD a CBH, if none is present yet.
If there is no help for the specified parameter, it will simply do nothing, but report the fact.

## Examples

### EXAMPLE 1

```powershell
Set-PSMDParameterHelp -Path "C:\PowerShell\Projects\MyModule" -CommandName "*" -ParameterName "Foo" -HelpText @"
This is some foo text
For a truly foo-some result
"@
```

Scans all files in the specified path.
- Considers every function found
- Will only process the parameter 'Foo'
- And replace the current text with the one specified

## Parameters

### CommandName

The name of the command to update.
Uses wildcard matching to match, so you can do a global update using "*"

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### DisableCache

By default, this command caches the results of its execution in the PSFramework result cache.
This information can then be retrieved for the last command to do so by running Get-PSFResultCache.
Setting this switch disables the caching of data in the cache.

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

### HelpText

The text to insert.
- Do not include indents.
It will pick up the previous indents and reuse them
- Do not include an extra line, it will automatically add a separating line to the next element

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ParameterName

The name of the parameter to update.
Must be an exact match, but is not case sensitive.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Path

The base path where all the files are in.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


