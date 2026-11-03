---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFPath
---

# Set-PSFPath

## Synopsis

Configures or updates a path under a name.

## Syntax

### Default

```
Set-PSFPath -Name <string> -Path <string> [<CommonParameters>]
```

### Register

```
Set-PSFPath -Name <string> -Path <string> -Register [-Scope <ConfigScope>] [<CommonParameters>]
```

## Description

Configures or updates a path under a name.
The path can be persisted using the "-Register" command.
Paths setup like this can be retrieved using Get-PSFPath.

## Examples

### EXAMPLE 1

```powershell
Set-PSFPath -Name 'temp' -Path 'C:\temp'
```

Configures C:\temp as the current temp path.
(does not override $env:temp !)

## Parameters

### Name

Name the path should be stored under.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Path

The path that should be returned under the name.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Register

Registering a path in order for it to persist across sessions.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Register
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Scope

The configuration scope it should be registered under.
Defaults to UserDefault.
Configuration scopes are the default locations configurations are being stored at.
For more details see:
https://psframework.org/documentation/documents/psframework/configuration/persistence-location.html

```yaml
Type: PSFramework.Configuration.ConfigScope
DefaultValue: UserDefault
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Register
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


