---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Set-PSFResultCache
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFResultCache
---

# Set-PSFResultCache

## Synopsis

Stores a result in the result cache

## Syntax

### __AllParameterSets

```
Set-PSFResultCache [-InputObject] <Object> [-DisableCache <bool>] [-PassThru]
 [-CommandName <string>] [<CommonParameters>]
```

## Description

Stores a result in the result cache.
This function is designed for use in other functions, a user should never have cause to use it directly himself.

## Examples

### EXAMPLE 1

```powershell
Set-PSFResultCache -InputObject $Results -DisableCache $NoRes
```

Stores the contents of $Results in the result cache, but does nothing if $NoRes is $true (the default Switch-name for disabling the result cache)

### EXAMPLE 2

```powershell
Get-ChildItem $path | Get-Acl | Set-PSFResultCache -DisableCache $NoRes -PassThru
```

Gets all items in $Path, then retrieves each of their Acl, finally it stores those in the result cache (if it isn't disabled via $NoRes) and finally passes each Acl through for the user to see.
This will return all objects, even if $NoRes is set to $True.

## Parameters

### CommandName

Default: (Get-PSCallStack)[0].Command
The name of the command that called Set-PSFResultCache.
Is automatically detected and usually doesn't need to be changed.

```yaml
Type: System.String
DefaultValue: (Get-PSCallStack)[0].Command
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

### DisableCache

Allows you to control, whether the function actually writes to the cache.
Useful when used in combination with -PassThru.
Does not suppress output via -PassThru.
However in combination, these two parameters make caching within a pipeline practical.

```yaml
Type: System.Boolean
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

The value to store in the result cache.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Value
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PassThru

The objects that are being cached are passed through this function.
By default, Set-PSFResultCache doesn't have any output.

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


