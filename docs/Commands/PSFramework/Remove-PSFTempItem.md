---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSFTempItem
---

# Remove-PSFTempItem

## Synopsis

Removes temporary items.

## Syntax

### targeted

```
Remove-PSFTempItem -Name <string> -ModuleName <string> [<CommonParameters>]
```

### expired

```
Remove-PSFTempItem [-ClearExpired] [<CommonParameters>]
```

## Description

Removes temporary items.
This not only removes them from memory, but also invokes the item's deletion logic, removing temporary files, deleting temporary user accounts, etc.

## Examples

### EXAMPLE 1

```powershell
Remove-PSFTempItem -ClearExpired
```

Globally removes all temporary items that have expired.

### EXAMPLE 2

```powershell
Get-PSFTempItem | Remove-PSFTempItem
```

Remove ALL temporary items, irrespective of whether they are still needed or not.

### EXAMPLE 3

```powershell
Remove-PSFTempItem -Name configFile -Module FWManager
```

Removes the temp item "configFile" of the module "FWManager"

### EXAMPLE 4

```powershell
Remove-PSFTempItem -Name *beer* -Module Fridge
```

Removes all temporary items containing the word "beer" that are associated with the module "Fridge".
Try not to get too drunk.

## Parameters

### ClearExpired

Globally remove all temporary items that have expired.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: expired
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ModuleName

Name of the module to filter by.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Module
ParameterSets:
- Name: targeted
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the temporary item to remove.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targeted
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


