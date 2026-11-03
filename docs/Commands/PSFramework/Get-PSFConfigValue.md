---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFConfigValue
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFConfigValue
---

# Get-PSFConfigValue

## Synopsis

Returns the configuration value stored under the specified name.

## Syntax

### __AllParameterSets

```
Get-PSFConfigValue [-FullName] <string> [-Fallback <Object>] [-NotNull] [<CommonParameters>]
```

## Description

Returns the configuration value stored under the specified name.
It requires the full name (<Module>.<Name>) and is usually only called by functions.

## Examples

### EXAMPLE 1

```powershell
Get-PSFConfigValue -FullName 'System.MailServer'
```

Returns the configured value that was assigned to the key 'System.MailServer'

### EXAMPLE 2

```powershell
Get-PSFConfigValue -FullName 'Default.CoffeeMilk' -Fallback 0
```

Returns the configured value for 'Default.CoffeeMilk'.
If no such value is configured, it returns '0' instead.

## Parameters

### Fallback

A fallback value to use, if no value was registered to a specific configuration element.
This basically is a default value that only applies on a "per call" basis, rather than a system-wide default.

```yaml
Type: System.Object
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

### FullName

The full name (<Module>.<Name>) of the configured value to return.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Name
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

### NotNull

By default, this function returns null if one tries to retrieve the value from either a Configuration that does not exist or a Configuration whose value was set to null.
However, sometimes it may be important that some value was returned.
By specifying this parameter, the function will throw an error if no value was found at all.

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


