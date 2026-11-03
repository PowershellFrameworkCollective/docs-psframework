---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFConfig
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFConfig
---

# Get-PSFConfig

## Synopsis

Retrieves configuration elements by name.

## Syntax

### FullName

```
Get-PSFConfig [[-FullName] <string>] [-Persisted] [-Force] [<CommonParameters>]
```

### Module

```
Get-PSFConfig [[-Module] <string>] [[-Name] <string>] [-Persisted] [-Force] [<CommonParameters>]
```

## Description

Retrieves configuration elements by name.
Can be used to search the existing configuration list.

## Examples

### EXAMPLE 1

```powershell
Get-PSFConfig 'Mail.To'
```

Retrieves the configuration element for the key "Mail.To"

### EXAMPLE 2

```powershell
Get-PSFConfig -Force
```

Retrieve all configuration elements from all modules, even hidden ones.

### EXAMPLE 3

```powershell
Get-PSFConfig -Persisted
```

Retrieve all persisted settings.

## Parameters

### Force

Overrides the default behavior and also displays hidden configuration values.

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

Default: "*"
Search for configurations using the full name

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FullName
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Module

Default: "*"
Search configuration by module.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Default: "*"
The name of the configuration element(s) to retrieve.
May be any string, supports wildcards.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Persisted

Rather than retrieving current settings, look for configuration entries that have been persisted on the machine.

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


