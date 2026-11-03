---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Select-PSFConfig
---

# Select-PSFConfig

## Synopsis

Select a subset of configuration entries and return them as objects.

## Syntax

### __AllParameterSets

```
Select-PSFConfig [[-FullName] <string>] [[-Depth] <int[]>] [-Force] [<CommonParameters>]
```

## Description

Select a subset of configuration entries and return them as objects.

This can be used to retrieve related configuration entries as a single PowerShell object.

For example, assuming there are the following configuration entries:

LoggingProvider.LogFile.AutoInstall
LoggingProvider.LogFile.Enabled
LoggingProvider.LogFile.ExcludeModules
LoggingProvider.LogFile.ExcludeTags
LoggingProvider.LogFile.IncludeModules
LoggingProvider.LogFile.IncludeTags
LoggingProvider.LogFile.InstallOptional

Then this line:
Select-PSFConfig 'LoggingProvider.LogFile.*'

Will return a PSCustomObject that looks similar to this:

_Name           : LogFile
_FullName       : LoggingProvider.LogFile
_Depth          : 1
_Children       : {}
AutoInstall     : False
Enabled         : False
ExcludeModules  : {}
ExcludeTags     : {}
IncludeModules  : {}
IncludeTags     : {}
InstallOptional : True

This selection is recursive:
It will group on each part of the FullName of the selected configuration entries.
- Entries that only have children and no straight values (In the example above, that would be the first, the "LoggingProvider" node) will not be included and only return children.
- Entries with values AND children, will have child entries included in the _Children property.
- Even child entries of Entries with values will be returned

## Examples

### EXAMPLE 1

```powershell
Select-PSFConfig 'LoggingProvider.LogFile.*'
```

Selects all configuration settings under 'LoggingProvider.LogFile.*', grouping the value ends as PSObject.

## Parameters

### Depth

Only entries at the specified depth level will be returned.
Depth starts at "0"
In the name 'LoggingProvider.LogFile.AutoInstall' ...

- "LoggingProvider" would be depth 0
- "LogFile" would be depth 1
- ...

```yaml
Type: System.Int32[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Force

Also select hidden configuration items.
By default, only non-hidden settings are selected.

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

### FullName

String filter to select, which configuration entries to select on.
Use the same value on Get-PSFConfig to see what configuration entries will be processed.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Name
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


