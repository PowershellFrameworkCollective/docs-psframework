---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFScriptblock
---

# Set-PSFScriptblock

## Synopsis

Stores a scriptblock in the central scriptblock store.

## Syntax

### __AllParameterSets

```
Set-PSFScriptblock [-Name] <string> [-Scriptblock] <scriptblock> [-Global] [-Local]
 [-Tag <string[]>] [-Description <string>] [<CommonParameters>]
```

## Description

Stores a scriptblock in the central scriptblock store.
This store can be accessed using Get-PSFScriptblock.
It is used to share scriptblocks outside of scope and runspace boundaries.
Scriptblocks thus registered can be accessed by C#-based services, such as the PsfValidateScript attribute.

## Examples

### EXAMPLE 1

```powershell
Set-PSFScriptblock -Name 'MyModule.TestServer' -Scriptblock $Scriptblock
```

Stores the scriptblock contained in $Scriptblock under the 'MyModule.TestServer' name.

### EXAMPLE 2

```powershell
Set-PSFScriptblock -Name 'MyModule.TestServer' -Scriptblock $Scriptblock -Tag Awesome, BestCodeEver -Description 'This scriptblock is the only one you need'
```

Stores the scriptblock contained in $Scriptblock under the 'MyModule.TestServer' name.
Applies the tags 'Awesome' and 'BestCodeEver', as well as a descriptive text.

## Parameters

### Description

A description for a scriptblock.
Used for easier filtering and in lieu of documentation.

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

### Global

Whether the scriptblock should be invoked in the global context.
If defined, accessing the scriptblock will automatically globalize it before returning it.

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

### Local

Whether the scriptblock should be local to the current runspace.
If defined, each runspace must define its own instance of the scriptblock to use it.

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

### Name

The name of the scriptblock.
Must be unique, it is recommended to prefix the module name:
<Module>.<Scriptblock>

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

### Scriptblock

The scriptcode to register

```yaml
Type: System.Management.Automation.ScriptBlock
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

### Tag

A list of tags to apply to a scriptblock.
Used for easier filtering.

```yaml
Type: System.String[]
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

## Notes

Repeatedly registering the same scriptblock (e.g.
in multi-runspace scenarios) is completely safe:
- Access is threadsafe & Runspacesafe
- Overwriting the scriptblock does not affect the statistics



