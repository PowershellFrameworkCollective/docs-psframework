---
document type: cmdlet
external help file: PSFramework.NuGet-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework.NuGet
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFModuleScope
---

# Register-PSFModuleScope

## Synopsis

Provide a scope you can install modules to.

## Syntax

### Path

```
Register-PSFModuleScope -Name <string> -Path <string> [-Mode <string>] [-Description <string>]
 [-Persist] [<CommonParameters>]
```

### Scriptblock

```
Register-PSFModuleScope -Name <string> -ScriptBlock <scriptblock> [-Description <string>]
 [<CommonParameters>]
```

## Description

Provide a scope you can install modules to.
Those are used by Install-PFModule to pick what path to install to.

## Examples

### EXAMPLE 1

```powershell
Register-PSFModuleScope -Name WinPSAllUsers -Path 'C:\Program Files\WindowsPowerShell\Modules'
```

Registers the module-scope "WinPSAllusers" with the default path for Modules in Windows PowerShell.
This would allow installing modules for Windows PowerShell from PowerShell 7.

## Parameters

### Description

A description to add to the module scope registered.
Purely for documentation purposes.

```yaml
Type: System.String
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

### Mode

Specifying a mode will add the path provided to the PSModulePath variable for this session.
- Append: Adds the path as the last option, making it the last location PowerShell will look for modules.
- Prepend: Adds the path as the first option, making it take precedence over all other module paths.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Path
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

Name of the scope.
Must be unique, otherwise it will overwrite an existing scope.

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

Path where modules should be stored.

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

### Persist

Remember the configured scope.
For the current user, even when starting a new console, this scope will still exist.
This will NOT remember the "Mode" parameter - configure your PSModulePath environment evariable separately, if desired.
Not compatible with a ScriptBlock-based setting.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Path
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ScriptBlock

Logic determining, where modules should be stored.
This scriptblock will not receive any parameters.
Used to dynamically determine the path, may be executed against remote computers,
when installing to remote computers.
Keep in mind that dependencies may not be available.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Scriptblock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


