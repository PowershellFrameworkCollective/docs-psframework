---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFTempItem
---

# New-PSFTempItem

## Synopsis

Creates a temporary item

## Syntax

### __AllParameterSets

```
New-PSFTempItem [-Name] <string> [-ProviderName] <string> [-Data] <hashtable>
 [[-Timeout] <DateTimeParameter>] [[-ModuleName] <string>] [<CommonParameters>]
```

## Description

Creates a temporary item.
This is a generically extensible item that requires a provider - a plugin - that determines what it actually means.
Depending on the implementation, this could be a temporary user account, a temporary database, a temporary ...
anything.

Use Register-PSFTempProvider to define a temporary item provider.

## Examples

### EXAMPLE 1

```powershell
New-PSFTempItem -Name 'userA' -ProviderName 'aduser' -Data @{ OU = 'OU=TempUser,OU=Company,DC=Contoso,DC=com' }
```

Create a temporary AD user named userA.
Requires a temporary item provider named aduser.

## Parameters

### Data

The information needed to generate the temporary item.
What information is needed by the provider depends on the provider implementation itself.

```yaml
Type: System.Collections.Hashtable
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

### ModuleName

Name of the module the temp item belongs to.
If called from within a module, this value will be detected automatically and needs not be specified.

```yaml
Type: System.String
DefaultValue: '[PSFramework.Utility.UtilityHost]::GetCallerInfo(1).CallerModule'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the temporary item.
Used for identifying the item, but need not be particularly unique otherwise.

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

### ProviderName

Name of the provider implementing the actual logic.
Use Register-PSFTempProvider to define one.

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

### Timeout

How long into the future this item is valid.
Expired temporary items can be conveniently cleaned up using Remove-PSFTempItem.

```yaml
Type: PSFramework.Parameter.DateTimeParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


