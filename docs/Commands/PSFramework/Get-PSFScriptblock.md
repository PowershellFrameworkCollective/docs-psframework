---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFScriptblock
---

# Get-PSFScriptblock

## Synopsis

Access the scriptblocks stored with Set-PSFScriptblock.

## Syntax

### Name

```
Get-PSFScriptblock -Name <string[]> [<CommonParameters>]
```

### Container

```
Get-PSFScriptblock -Name <string[]> [-Container] [<CommonParameters>]
```

### Search

```
Get-PSFScriptblock [-Name <string[]>] [-List] [-Description <string>] [-Tag <string[]>]
 [<CommonParameters>]
```

## Description

Access the scriptblocks stored with Set-PSFScriptblock.

Use this command to access scriptblocks designed for easy, processwide access.

## Examples

### EXAMPLE 1

```powershell
Get-PSFScriptblock -Name 'MyModule.TestServer'
```

Returns the scriptblock stored as 'MyModule.TestServer'

### EXAMPLE 2

```powershell
Get-PSFScriptblock -List
```

Returns a list of all scriptblocks

### EXAMPLE 3

```powershell
Get-PSFScriptblock -List -Name 'MyModule.TestServer'
```

Returns scriptblock and meta information for the MyModule.TestServer scriptblock.

### EXAMPLE 4

```powershell
Get-PSFScriptblock -Name 'MyModule.*' -Tag StateChanging, Networking
```

Returns scriptblock and meta information for all scriptblocks tagged StateChanging
or Networking and with a name starting with MyModule.

### EXAMPLE 5

```powershell
Get-PSFScriptblock -Description '*Infrastructure Script*'
```

Returns scriptblock and meta information for all script blocks containing the
description '*Infrastructure Script*'.

## Parameters

### Container

Return the scriptblock container item rather than the scriptblock directly.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Container
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Description

Filter scriptblocks by their description using wildcard characters.
This can be further filtered by using a wildcard supporting string as -Name.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Search
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### List

Instead of requesting a specific scriptblock, list the available ones.
This can be further filtered by using a wildcard supporting string as -Name.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Search
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the scriptblock to request.
It's mandatory for explicitly requesting a scriptblock, but optional to use with -List as a filter.

```yaml
Type: System.String[]
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Container
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Name
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Search
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Tag

Filter scriptblocks by their tags.
This can be further filtered by using a wildcard supporting string as -Name.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Search
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


