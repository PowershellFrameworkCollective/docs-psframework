---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSMDModulePath
---

# Set-PSMDModulePath

## Synopsis

Sets the path of the module currently being developed.

## Syntax

### Module

```
Set-PSMDModulePath -Module <psmoduleinfo> [-Register] [-EnableException] [<CommonParameters>]
```

### Path

```
Set-PSMDModulePath -Path <string> [-Register] [-EnableException] [<CommonParameters>]
```

## Description

Sets the path of the module currently being developed.
This is used by several utility commands in order to not require any path input.

This is a wrapper around the psframework configuration system, the same action can be taken by running this command:
Set-PSFConfig -Module PSModuleDevelopment -Name "Module.Path" -Value $Path

## Examples

### EXAMPLE 1

```powershell
Set-PSMDModulePath -Path "C:\github\dbatools"
```

Sets the current module path to "C:\github\dbatools"

### EXAMPLE 2

```powershell
Set-PSMDModulePath -Path "C:\github\dbatools" -Register
```

Sets the current module path to "C:\github\dbatools"
Then stores the setting in registry, causing it to be persisted acros multiple sessions.

## Parameters

### EnableException

Replaces user friendly yellow warnings with bloody red exceptions of doom!
Use this if you want the function to throw terminating errors you want to catch.

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

### Module

The module, the path of which to register.

```yaml
Type: System.Management.Automation.PSModuleInfo
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Module
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Path

The path to set as currently developed module.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Path
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

Register the specified path, to have it persist across sessions

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


