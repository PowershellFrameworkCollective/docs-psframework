---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSMDModuleDebug
---

# Set-PSMDModuleDebug

## Synopsis

Configures how modules are handled during import of this module.

## Syntax

### Name

```
Set-PSMDModuleDebug [-Name] <string> [-AutoImport] [-DebugMode] [-PreImportAction <scriptblock>]
 [-PostImportAction <scriptblock>] [-Priority <int>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AllImport

```
Set-PSMDModuleDebug -AllAutoImport [-WhatIf] [-Confirm] [<CommonParameters>]
```

### NoneImport

```
Set-PSMDModuleDebug -NoneAutoImport [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

This module allows specifying other modules to import during import of this module.
Using the Set-PSMDModuleDebug function it is possible to configure, which module is automatically imported, without having to edit the profile each time.
This import occurs at the end of importing this module, thus setting this module in the profile as automatically imported is recommended.

## Examples

### EXAMPLE 1

```powershell
Set-PSMDModuleDebug -Name 'cPSNetwork' -AutoImport
```

Configures the module cPSNetwork to automatically import after importing PSModuleDevelopment

### EXAMPLE 2

```powershell
Set-PSMDModuleDebug -Name 'cPSNetwork' -AutoImport -DebugMode
```

Configures the module cPSNetwork to automatically import after importing PSModuleDevelopment using debug mode.

### EXAMPLE 3

```powershell
Set-PSMDModuleDebug -Name 'cPSNetwork' -AutoImport -DebugMode -PreImportAction { Write-Host "Was done before importing" } -PostImportAction { Write-Host "Was done after importing" }
```

Configures the module cPSNetwork to automatically import after importing PSModuleDevelopment using debug mode.
- Running a scriptblock before import
- Running another scriptblock after import

Note: Using Write-Host is generally - but not always - bad practice
Note: Verbose output during module import is generally discouraged (doesn't apply to tests of course)

## Parameters

### AllAutoImport

Changes all registered modules to automatically import on powershell launch.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- aai
ParameterSets:
- Name: AllImport
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### AutoImport

Setting this will cause the module to be automatically imported at the end of importing the PSModuleDevelopment module.
Even when set to false, the configuration can still be maintained and the debug mode enabled.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- ai
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Confirm

If this switch is enabled, you will be prompted for confirmation before executing any operations that change state.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### DebugMode

Setting this will cause the module to create a global variable named "<ModuleName>_DebugMode" with value $true during import of PSModuleDevelopment.
Modules configured to use this variable can determine the intended import mode using this variable.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- dbg
ParameterSets:
- Name: Name
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

The name of the module to configure for automatic import.
Needs to be an exact match, the first entry found using "Get-Module -ListAvailable" will be imported.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- n
ParameterSets:
- Name: Name
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### NoneAutoImport

Changes all registered modules to not automatically import on powershell launch.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- nai
ParameterSets:
- Name: NoneImport
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PostImportAction

Any scriptblock that should run after importing the module.
Only used when importing modules using the "Invoke-ModuleDebug" funtion, as his used for modules set to auto-import.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PreImportAction

Any scriptblock that should run before importing the module.
Only used when importing modules using the "Invoke-ModuleDebug" funtion, as is used for modules set to auto-import.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Priority

When importing modules in a debugging context, they are imported in the order of their priority.
The lower the number, the sooner it is imported.

```yaml
Type: System.Int32
DefaultValue: 5
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Name
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### WhatIf

If this switch is enabled, no actions are performed but informational messages will be displayed that explain what would happen if the command were to run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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


