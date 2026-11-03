---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSMDTemplate
---

# Remove-PSMDTemplate

## Synopsis

Removes templates

## Syntax

### NameStore

```
Remove-PSMDTemplate [-TemplateName] <string> [-Store <string>] [-Deprecated] [-EnableException]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Template

```
Remove-PSMDTemplate -Template <TemplateInfo[]> [-EnableException] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### NamePath

```
Remove-PSMDTemplate [-TemplateName] <string> -Path <string> [-Deprecated] [-EnableException]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

This function removes templates used in the PSModuleDevelopment templating system.

## Examples

### EXAMPLE 1

```powershell
Remove-PSMDTemplate -TemplateName '*' -Deprecated
```

Remove all templates that have been superseded by a newer version.

### EXAMPLE 2

```powershell
Get-PSMDTemplate -TemplateName 'module' -RequiredVersion '1.2.2.1' | Remove-PSMDTemplate
```

Removes all copies of the template 'module' with exactly the version '1.2.2.1'

## Parameters

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

### Deprecated

Will delete all versions of matching templates except for the latest one.
Note:
If the same template is found in multiple stores, it will keep a single copy across all stores.
To process by store, be sure to specify the store parameter and loop over the stores desired.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NamePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: NameStore
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

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

### Path

Instead of a registered store, look in this path for templates.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NamePath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Store

The template store to retrieve tempaltes from.
By default, all stores are queried.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NameStore
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Template

A template object returned by Get-PSMDTemplate.
Will clear exactly the version specified, from exactly its location.

```yaml
Type: PSModuleDevelopment.Template.TemplateInfo[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Template
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TemplateName

The name of the template to remove.
Templates are filtered by this using wildcard comparison.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NamePath
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: NameStore
  Position: 0
  IsRequired: true
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


