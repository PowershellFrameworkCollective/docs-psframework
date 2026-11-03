---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFTeppScriptblock
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFTeppScriptblock
---

# Register-PSFTeppScriptblock

## Synopsis

Registers a scriptblock under name, to later be available for TabExpansion.

## Syntax

### __AllParameterSets

```
Register-PSFTeppScriptblock [-ScriptBlock] <scriptblock> [-Name] <string> [[-Mode] <TeppScriptMode>]
 [[-CacheDuration] <TimeSpanParameter>] [[-MaxResults] <int>] [-Global] [-MatchAnywhere]
 [-FuzzyMatch] [-AlwaysQuote] [-DontSort] [-DontFilter] [-AutoTraining] [<CommonParameters>]
```

## Description

Registers a scriptblock under name, to later be available for TabExpansion.

This system supports two separate types of input: Full or Simple.

Simple:
The scriptblock simply must return string values.
PSFramework will then do the rest of the processing when the user asks for tab completion.
This is the simple-most way to implement tab completion, for a full example, look at the first example in this help.

Full:
A full scriptblock implements all that is needed to provide Tab Expansion.
For more details and guidance, see the following concept help:
Get-Help about_psf_tabexpansion

## Examples

### EXAMPLE 1

```powershell
Register-PSFTeppScriptblock -Name "psalcohol-liquids" -ScriptBlock { "beer", "mead", "wine", "vodka", "whiskey", "rum" }
Register-PSFTeppArgumentCompleter -Command Get-Alcohol -Parameter Type -Name "psalcohol-liquids"
```

In step one we set a list of questionable liquids as the list of available beverages for parameter 'Type' on the command 'Get-Alcohol'

### EXAMPLE 2

```powershell
Register-PSFTeppScriptblock -ScriptBlock $scriptBlock -Name MyFirstTeppScriptBlock
```

Stores the scriptblock stored in $scriptBlock under the name "MyFirstTeppScriptBlock"

### EXAMPLE 3

```powershell
$scriptBlock = { (Get-ChildItem (Get-PSFConfigValue -FullName mymodule.path.scripts -Fallback "$env:USERPROFILE\Documents\WindowsPowerShell\Scripts")).FullName }
Register-PSFTeppScriptblock -Name mymodule-scripts -ScriptBlock $scriptBlock -Mode Simple
```

Stores a simple scriptblock that will return a list of strings under the name "mymodule-scripts".
The system will wrap all the stuff around this that is necessary to provide Tab Expansion and filter out output that doesn't fit the user input so far.

## Parameters

### AlwaysQuote

All completion results will be wrapped in quotes, not just the ones with a whitespace.

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

### AutoTraining

Automatically train the tab completion by caching user inputs.
Requires using Update-PSFTeppCompletion inside of the respective command, to automatically pick up new values.

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

### CacheDuration

How long a tab completion result is valid.
By default, PSFramework tab completion will run the scriptblock on each call.
This can be used together with a background refresh mechanism to offload the cost of expensive queries into the background.
See Set-PSFTeppResult for details on how to refresh the cache.

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### DontFilter

Do not automatically filter by the words the user typed.
This allows for the scriptblock to provide its own, more complex filtering.

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

### DontSort

Completion results are no longer sorted alphabetically.

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

### FuzzyMatch

Apply FuzzyMatching to the legal completion text, not just direct word matching.

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

### Global

Whether the scriptblock should be executed in the global context.
This parameter is needed to reliably execute in background runspaces, but means no direct access to module content.

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

### MatchAnywhere

Match input against any part of the completion text, not just the beginning.

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

### MaxResults

The maximum number of results shown to the user.
If more completions would be viable, only the first X are shown, as well as a message informaing about the truncation.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Mode

Whether the script provided is a full or simple scriptblock.
By default, this function automatically detects this, but just in case, you can override this detection.

```yaml
Type: PSFramework.TabExpansion.TeppScriptMode
DefaultValue: Auto
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name under which the scriptblock should be registered.
It is recommended to prefix the name with the module (e.g.: mymodule.<name>), as names are shared across all implementing modules.

```yaml
Type: System.String
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

### ScriptBlock

The scriptblock to register.

```yaml
Type: System.Management.Automation.ScriptBlock
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


