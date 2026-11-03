---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Export-PSFModuleClass
---

# Export-PSFModuleClass

## Synopsis

Exports a module-defined PowerShell class irrespective of how the module is being imported.

## Syntax

### __AllParameterSets

```
Export-PSFModuleClass [-ClassType] <type[]> [<CommonParameters>]
```

## Description

Exports a module-defined PowerShell class irrespective of how the module is being imported.
This avoids having to worry about how the module is being imported.

Please beware the risk of class-name-collisions however.

## Examples

### EXAMPLE 1

```powershell
Export-PSFModuleClass -ClassType ([MyModule_MyClass])
```

Publishes the class MyModule_MyClass, making it available outside of your module.

## Parameters

### ClassType

The types to publish.

```yaml
Type: System.Type[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
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


