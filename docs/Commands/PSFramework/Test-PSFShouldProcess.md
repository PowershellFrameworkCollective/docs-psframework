---
document type: cmdlet
external help file: PSFramework.dll-Help.xml
HelpUri: https://psframework.org/documentation/commands/PSFramework/Test-PSFShouldProcess.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFShouldProcess
---

# Test-PSFShouldProcess

## Synopsis

Implements the shouldprocess question.

## Syntax

### Message

```
Test-PSFShouldProcess -Target <string> -Action <string> [-PSCmdlet <PSCmdlet>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### String

```
Test-PSFShouldProcess -Target <string> -ActionString <string> [-ActionStringValues <Object[]>]
 [-PSCmdlet <PSCmdlet>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Description

This command can be used in other commands to implement the ShouldProcess question asked if using the command requires confirmation.
This replaces / wraps the traditional ShouldProcess call, makes it easier to read in script and allows mocking it.

## Examples

### Basic Usage

```powershell
if (Test-PSFShouldProcess -PSCmdlet $PSCmdlet -Target $item -Action "Performing some arbitrary action") {
```

}

This will test whether the user should be prompted for confirmation, will do so if necessary and report back the results.

## Parameters

### Action

The action that will be performed on the target.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Message
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ActionString

Localized string of the action that will be performed on the target.
Omit the modulename in the string.
For more details on the PSFramework localization feature, see the help on Import-PSFLocalizedString.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: String
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ActionStringValues

Specify values to format into the localization string specified.
For more details on the PSFramework localization feature, see the help on Import-PSFLocalizedString.

```yaml
Type: System.Object[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: String
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

Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### PSCmdlet

The $PSCmdlet variable of the calling function.
Used to ensure the actual prompt logic as intended is being used.

```yaml
Type: System.Management.Automation.PSCmdlet
DefaultValue: None
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

### Target

The target that is being processed.

```yaml
Type: System.String
DefaultValue: None
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

### WhatIf

Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

## Notes




## Links

Microsoft.PowerShell.PlatyPS.Model.Links


